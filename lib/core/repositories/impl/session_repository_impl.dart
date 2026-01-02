import 'dart:convert';
import 'package:drift/drift.dart';
import '../../database/app_database.dart' as db;
import '../../models/models.dart';
import '../session_repository.dart';

/// Implementation of SessionRepository using Drift database.
class SessionRepositoryImpl implements SessionRepository {
  final db.AppDatabase _database;

  SessionRepositoryImpl(this._database);

  @override
  Future<Session> createSession(Session session) async {
    await _database.into(_database.sessions).insert(
          db.SessionsCompanion(
            id: Value(session.id),
            taskId: Value(session.taskId),
            startDateTime: Value(session.startDateTime),
            endDateTime: Value(session.endDateTime),
            createdAt: Value(session.createdAt),
          ),
        );

    // Save ratings if any
    if (session.ratings.isNotEmpty) {
      await saveRatings(session.id, session.ratings);
    }

    return session;
  }

  @override
  Future<Session> updateSession(Session session) async {
    await (_database.update(_database.sessions)
          ..where((s) => s.id.equals(session.id)))
        .write(
          db.SessionsCompanion(
            taskId: Value(session.taskId),
            startDateTime: Value(session.startDateTime),
            endDateTime: Value(session.endDateTime),
          ),
        );

    // Update ratings
    if (session.ratings.isNotEmpty) {
      await saveRatings(session.id, session.ratings);
    }

    return session;
  }

  @override
  Future<void> deleteSession(String sessionId) async {
    // Delete ratings first
    await (_database.delete(_database.ratings)
          ..where((r) => r.sessionId.equals(sessionId)))
        .go();

    // Delete the session
    await (_database.delete(_database.sessions)
          ..where((s) => s.id.equals(sessionId)))
        .go();
  }

  @override
  Future<Session?> getSessionById(String sessionId) async {
    final row = await (_database.select(_database.sessions)
          ..where((s) => s.id.equals(sessionId)))
        .getSingleOrNull();

    if (row == null) return null;

    final ratings = await _loadRatings(sessionId);
    return _rowToSession(row, ratings);
  }

  @override
  Future<List<Session>> getSessionsByTask(String taskId) async {
    final rows = await (_database.select(_database.sessions)
          ..where((s) => s.taskId.equals(taskId))
          ..orderBy([(s) => OrderingTerm.desc(s.startDateTime)]))
        .get();

    final sessions = <Session>[];
    for (final row in rows) {
      final ratings = await _loadRatings(row.id);
      sessions.add(_rowToSession(row, ratings));
    }

    return sessions;
  }

  @override
  Future<List<Session>> getSessionsByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final rows = await (_database.select(_database.sessions)
          ..where((s) =>
              s.startDateTime.isBiggerOrEqualValue(startDate) &
              s.startDateTime.isSmallerOrEqualValue(endDate))
          ..orderBy([(s) => OrderingTerm.desc(s.startDateTime)]))
        .get();

    final sessions = <Session>[];
    for (final row in rows) {
      final ratings = await _loadRatings(row.id);
      sessions.add(_rowToSession(row, ratings));
    }

    return sessions;
  }

  @override
  Future<List<Session>> getAllSessions() async {
    final rows = await (_database.select(_database.sessions)
          ..orderBy([(s) => OrderingTerm.desc(s.startDateTime)]))
        .get();

    final sessions = <Session>[];
    for (final row in rows) {
      final ratings = await _loadRatings(row.id);
      sessions.add(_rowToSession(row, ratings));
    }

    return sessions;
  }

  @override
  Future<Session?> getActiveSession() async {
    // An active session is one where endDateTime equals startDateTime
    // (meaning it hasn't been stopped yet)
    final rows = await (_database.select(_database.sessions)
          ..where((s) => s.endDateTime.equalsExp(s.startDateTime))
          ..orderBy([(s) => OrderingTerm.desc(s.startDateTime)])
          ..limit(1))
        .get();

    if (rows.isEmpty) return null;

    final row = rows.first;
    final ratings = await _loadRatings(row.id);
    return _rowToSession(row, ratings);
  }

  @override
  Future<void> saveRatings(String sessionId, Map<String, RatingValue> ratings) async {
    // Delete existing ratings for this session
    await (_database.delete(_database.ratings)
          ..where((r) => r.sessionId.equals(sessionId)))
        .go();

    // Insert new ratings
    if (ratings.isNotEmpty) {
      await _database.batch((batch) {
        for (final entry in ratings.entries) {
          final valueJson = entry.value.when(
            discrete: (values) => jsonEncode(values),
            continuous: (value) => value.toString(),
          );

          batch.insert(
            _database.ratings,
            db.RatingsCompanion(
              id: Value(_generateRatingId()),
              sessionId: Value(sessionId),
              criterionId: Value(entry.key),
              value: Value(valueJson),
              createdAt: Value(DateTime.now()),
            ),
          );
        }
      });
    }
  }

  /// Loads ratings for a session.
  Future<Map<String, RatingValue>> _loadRatings(String sessionId) async {
    final rows = await (_database.select(_database.ratings)
          ..where((r) => r.sessionId.equals(sessionId)))
        .get();

    final ratings = <String, RatingValue>{};
    for (final row in rows) {
      try {
        // Try to parse as JSON (discrete) first
        final jsonValue = jsonDecode(row.value);
        if (jsonValue is List) {
          ratings[row.criterionId] = RatingValue.discrete(
            values: jsonValue.map((e) => e.toString()).toList(),
          );
        } else {
          // Fallback to continuous
          final doubleValue = double.tryParse(row.value) ?? 0.0;
          ratings[row.criterionId] = RatingValue.continuous(value: doubleValue);
        }
      } catch (e) {
        // If JSON parsing fails, treat as continuous numeric value
        final doubleValue = double.tryParse(row.value) ?? 0.0;
        ratings[row.criterionId] = RatingValue.continuous(value: doubleValue);
      }
    }

    return ratings;
  }

  /// Converts a database row to a Session model.
  Session _rowToSession(db.Session row, Map<String, RatingValue> ratings) {
    return Session(
      id: row.id,
      taskId: row.taskId,
      startDateTime: row.startDateTime,
      endDateTime: row.endDateTime,
      ratings: ratings,
      createdAt: row.createdAt,
    );
  }

  /// Generates a unique ID for a rating.
  String _generateRatingId() {
    return 'rating_${DateTime.now().millisecondsSinceEpoch}_${DateTime.now().microsecondsSinceEpoch}';
  }
}


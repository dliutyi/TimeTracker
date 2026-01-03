import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/models/models.dart';
import 'package:yudi_time_tracker/core/repositories/impl/session_repository_impl.dart';

void main() {
  late db.AppDatabase database;
  late SessionRepositoryImpl repository;

  setUp(() async {
    database = db.AppDatabase.test(NativeDatabase.memory());
    repository = SessionRepositoryImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('SessionRepository', () {
    test('should create a session', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_1',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      final created = await repository.createSession(session);

      expect(created.id, 'session_1');
      expect(created.taskId, 'task_1');
    });

    test('should create a session with ratings', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_2',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        ratings: {
          'criterion_1': RatingValue.discrete(values: ['Excellent']),
          'criterion_2': RatingValue.continuous(value: 8.5),
        },
        createdAt: now,
      );

      final created = await repository.createSession(session);

      expect(created.ratings.length, 2);
    });

    test('should update a session', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_3',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session);

      final updated = session.copyWith(
        endDateTime: now.add(Duration(hours: 2)),
      );

      final result = await repository.updateSession(updated);

      expect(result.endDateTime, now.add(Duration(hours: 2)));
    });

    test('should delete a session', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_4',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session);
      await repository.deleteSession('session_4');

      final retrieved = await repository.getSessionById('session_4');
      expect(retrieved, isNull);
    });

    test('should get session by ID', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_5',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session);

      final retrieved = await repository.getSessionById('session_5');
      expect(retrieved, isNotNull);
      expect(retrieved!.id, 'session_5');
    });

    test('should get sessions by task', () async {
      final now = DateTime.now();
      final session1 = Session(
        id: 'session_6',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );
      final session2 = Session(
        id: 'session_7',
        taskId: 'task_1',
        startDateTime: now.add(Duration(hours: 2)),
        endDateTime: now.add(Duration(hours: 3)),
        createdAt: now,
      );
      final session3 = Session(
        id: 'session_8',
        taskId: 'task_2',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session1);
      await repository.createSession(session2);
      await repository.createSession(session3);

      final sessions = await repository.getSessionsByTask('task_1');
      expect(sessions.length, 2);
      expect(sessions.every((s) => s.taskId == 'task_1'), isTrue);
    });

    test('should get sessions by date range', () async {
      final baseDate = DateTime(2024, 1, 1);
      final session1 = Session(
        id: 'session_9',
        taskId: 'task_1',
        startDateTime: baseDate,
        endDateTime: baseDate.add(Duration(hours: 1)),
        createdAt: baseDate,
      );
      final session2 = Session(
        id: 'session_10',
        taskId: 'task_1',
        startDateTime: baseDate.add(Duration(days: 5)),
        endDateTime: baseDate.add(Duration(days: 5, hours: 1)),
        createdAt: baseDate,
      );
      final session3 = Session(
        id: 'session_11',
        taskId: 'task_1',
        startDateTime: baseDate.add(Duration(days: 10)),
        endDateTime: baseDate.add(Duration(days: 10, hours: 1)),
        createdAt: baseDate,
      );

      await repository.createSession(session1);
      await repository.createSession(session2);
      await repository.createSession(session3);

      final sessions = await repository.getSessionsByDateRange(
        baseDate,
        baseDate.add(Duration(days: 7)),
      );
      expect(sessions.length, 2);
    });

    test('should get all sessions', () async {
      final now = DateTime.now();
      final session1 = Session(
        id: 'session_12',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );
      final session2 = Session(
        id: 'session_13',
        taskId: 'task_2',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session1);
      await repository.createSession(session2);

      final allSessions = await repository.getAllSessions();
      expect(allSessions.length, 2);
    });

    test('should get active session', () async {
      final now = DateTime.now();
      final activeSession = Session(
        id: 'session_14',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now, // Active session has same start and end
        createdAt: now,
      );
      final completedSession = Session(
        id: 'session_15',
        taskId: 'task_1',
        startDateTime: now.subtract(Duration(hours: 2)),
        endDateTime: now.subtract(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(activeSession);
      await repository.createSession(completedSession);

      final active = await repository.getActiveSession();
      expect(active, isNotNull);
      expect(active!.id, 'session_14');
    });

    test('should return null when no active session exists', () async {
      final now = DateTime.now();
      final completedSession = Session(
        id: 'session_16',
        taskId: 'task_1',
        startDateTime: now.subtract(Duration(hours: 2)),
        endDateTime: now.subtract(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(completedSession);

      final active = await repository.getActiveSession();
      expect(active, isNull);
    });

    test('should save ratings for a session', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_17',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      await repository.createSession(session);

      final ratings = {
        'criterion_1': RatingValue.discrete(values: ['Good', 'Excellent']),
        'criterion_2': RatingValue.continuous(value: 7.5),
      };

      await repository.saveRatings('session_17', ratings);

      final retrieved = await repository.getSessionById('session_17');
      expect(retrieved!.ratings.length, 2);
      expect(retrieved.ratings['criterion_1'], isNotNull);
      expect(retrieved.ratings['criterion_2'], isNotNull);
    });

    test('should return null for non-existent session', () async {
      final session = await repository.getSessionById('non_existent');
      expect(session, isNull);
    });
  });
}


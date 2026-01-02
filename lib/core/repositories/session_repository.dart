import '../models/models.dart';

/// Repository interface for session operations.
abstract class SessionRepository {
  /// Creates a new session.
  Future<Session> createSession(Session session);

  /// Updates an existing session.
  Future<Session> updateSession(Session session);

  /// Deletes a session permanently.
  Future<void> deleteSession(String sessionId);

  /// Gets a session by its ID.
  Future<Session?> getSessionById(String sessionId);

  /// Gets all sessions for a specific task.
  Future<List<Session>> getSessionsByTask(String taskId);

  /// Gets sessions within a date range.
  Future<List<Session>> getSessionsByDateRange(
    DateTime startDate,
    DateTime endDate,
  );

  /// Gets all sessions.
  Future<List<Session>> getAllSessions();

  /// Saves ratings for a session.
  Future<void> saveRatings(String sessionId, Map<String, RatingValue> ratings);
}


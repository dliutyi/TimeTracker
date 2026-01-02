import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/session.dart';
import '../models/task.dart';
import '../repositories/repository_providers.dart';
import '../repositories/session_repository.dart';
import '../repositories/task_repository.dart';

/// Provider for active session state
final activeSessionProvider = StateNotifierProvider<ActiveSessionNotifier, Session?>((ref) {
  final sessionRepository = ref.watch(sessionRepositoryProvider);
  final taskRepository = ref.watch(taskRepositoryProvider);
  return ActiveSessionNotifier(sessionRepository, taskRepository);
});

/// Notifier for managing active session state
class ActiveSessionNotifier extends StateNotifier<Session?> {
  final SessionRepository _sessionRepository;
  final TaskRepository _taskRepository;

  ActiveSessionNotifier(this._sessionRepository, this._taskRepository) : super(null);

  /// Start a new session for a task
  Future<Session> startSession(Task task) async {
    final now = DateTime.now();
    final session = Session(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      taskId: task.id,
      startDateTime: now,
      endDateTime: now, // Will be updated when stopped
      createdAt: now,
    );

    // Save to database
    final savedSession = await _sessionRepository.createSession(session);
    state = savedSession;
    return savedSession;
  }

  /// Update the active session
  Future<void> updateSession(Session session) async {
    final updatedSession = await _sessionRepository.updateSession(session);
    state = updatedSession;
  }

  /// Stop the active session
  Future<Session> stopSession(DateTime endDateTime) async {
    if (state == null) {
      throw StateError('No active session to stop');
    }

    final updatedSession = state!.copyWith(endDateTime: endDateTime);
    final savedSession = await _sessionRepository.updateSession(updatedSession);
    state = savedSession;
    return savedSession;
  }

  /// Discard the active session (delete it)
  Future<void> discardSession() async {
    if (state == null) return;

    final sessionId = state!.id;
    await _sessionRepository.deleteSession(sessionId);
    state = null;
  }

  /// Clear the active session (without deleting)
  void clearActiveSession() {
    state = null;
  }

  /// Get the active task
  Future<Task?> getActiveTask() async {
    if (state == null) return null;
    return await _taskRepository.getTaskById(state!.taskId);
  }
}


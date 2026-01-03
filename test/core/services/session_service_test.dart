import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/models/models.dart';
import 'package:yudi_time_tracker/core/repositories/impl/session_repository_impl.dart';
import 'package:yudi_time_tracker/core/repositories/impl/task_repository_impl.dart';
import 'package:yudi_time_tracker/core/services/session_service.dart';

void main() {
  late db.AppDatabase database;
  late SessionRepositoryImpl sessionRepository;
  late TaskRepositoryImpl taskRepository;
  late ActiveSessionNotifier notifier;

  setUp(() async {
    database = db.AppDatabase.test(NativeDatabase.memory());
    sessionRepository = SessionRepositoryImpl(database);
    taskRepository = TaskRepositoryImpl(database);
    notifier = ActiveSessionNotifier(sessionRepository, taskRepository);
  });

  tearDown(() async {
    notifier.dispose();
    await database.close();
  });

  group('ActiveSessionNotifier', () {
    test('should start with null state', () {
      expect(notifier.state, isNull);
    });

    test('should start a session', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_1',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);

      final session = await notifier.startSession(task);

      expect(session, isNotNull);
      expect(session.taskId, 'task_1');
      expect(notifier.state, isNotNull);
      expect(notifier.state!.id, session.id);
    });

    test('should update session', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_2',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);
      final session = await notifier.startSession(task);

      final updated = session.copyWith(
        startDateTime: now.subtract(Duration(hours: 1)),
      );

      await notifier.updateSession(updated);

      expect(notifier.state, isNotNull);
      expect(notifier.state!.startDateTime, now.subtract(Duration(hours: 1)));
    });

    test('should stop session', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_3',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);
      await notifier.startSession(task);

      final endTime = DateTime.now();
      final stoppedSession = await notifier.stopSession(endTime);

      expect(stoppedSession.endDateTime, endTime);
      expect(notifier.state, isNotNull);
      expect(notifier.state!.endDateTime, endTime);
    });

    test('should throw error when stopping non-existent session', () async {
      expect(
        () => notifier.stopSession(DateTime.now()),
        throwsA(isA<StateError>()),
      );
    });

    test('should discard session', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_4',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);
      final session = await notifier.startSession(task);

      await notifier.discardSession();

      expect(notifier.state, isNull);

      // Verify session was deleted
      final retrieved = await sessionRepository.getSessionById(session.id);
      expect(retrieved, isNull);
    });

    test('should not throw when discarding null session', () async {
      await notifier.discardSession();
      expect(notifier.state, isNull);
    });

    test('should clear active session', () {
      notifier.clearActiveSession();
      expect(notifier.state, isNull);
    });

    test('should get active task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_5',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);
      await notifier.startSession(task);

      final activeTask = await notifier.getActiveTask();
      expect(activeTask, isNotNull);
      expect(activeTask!.id, 'task_5');
    });

    test('should return null for active task when no session', () async {
      final activeTask = await notifier.getActiveTask();
      expect(activeTask, isNull);
    });

    test('should load active session on initialization', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_6',
        icon: 'work',
        name: 'Test Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);

      // Create an active session directly in the database
      final activeSession = Session(
        id: 'active_session',
        taskId: 'task_6',
        startDateTime: now,
        endDateTime: now, // Active session
        createdAt: now,
      );
      await sessionRepository.createSession(activeSession);

      // Create a new notifier which should load the active session
      final newNotifier = ActiveSessionNotifier(sessionRepository, taskRepository);
      await newNotifier.loadActiveSession();

      expect(newNotifier.state, isNotNull);
      expect(newNotifier.state!.id, 'active_session');

      newNotifier.dispose();
    });
  });
}


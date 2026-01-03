import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/models/models.dart';
import 'package:yudi_time_tracker/core/repositories/impl/task_repository_impl.dart';

void main() {
  late db.AppDatabase database;
  late TaskRepositoryImpl repository;

  setUp(() async {
    // Use in-memory database for testing
    database = db.AppDatabase.test(NativeDatabase.memory());
    repository = TaskRepositoryImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('TaskRepository', () {
    test('should create a task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_1',
        icon: 'work',
        name: 'Test Task',
        motto: 'Test Motto',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      final created = await repository.createTask(task);

      expect(created.id, 'task_1');
      expect(created.name, 'Test Task');
      expect(created.motto, 'Test Motto');
    });

    test('should create a task with criteria', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_2',
        icon: 'home',
        name: 'Task with Criteria',
        criterionIds: ['criterion_1', 'criterion_2'],
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);

      final retrieved = await repository.getTaskById('task_2');
      expect(retrieved, isNotNull);
      expect(retrieved!.criterionIds, ['criterion_1', 'criterion_2']);
    });

    test('should update a task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_3',
        icon: 'work',
        name: 'Original Name',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);

      final updated = task.copyWith(
        name: 'Updated Name',
        motto: 'New Motto',
        updatedAt: now.add(Duration(hours: 1)),
      );

      final result = await repository.updateTask(updated);

      expect(result.name, 'Updated Name');
      expect(result.motto, 'New Motto');

      final retrieved = await repository.getTaskById('task_3');
      expect(retrieved!.name, 'Updated Name');
    });

    test('should delete a task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_4',
        icon: 'work',
        name: 'To Delete',
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);
      await repository.deleteTask('task_4');

      final retrieved = await repository.getTaskById('task_4');
      expect(retrieved, isNull);
    });

    test('should disable a task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_5',
        icon: 'work',
        name: 'To Disable',
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);
      final disabledAt = DateTime.now();
      final disabled = await repository.disableTask('task_5', disabledAt);

      expect(disabled.disabledAt, isNotNull);
      expect(disabled.disabledAt, disabledAt);

      final retrieved = await repository.getTaskById('task_5');
      expect(retrieved!.disabledAt, isNotNull);
    });

    test('should enable a disabled task', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_6',
        icon: 'work',
        name: 'To Enable',
        disabledAt: now,
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);
      final enabled = await repository.enableTask('task_6');

      expect(enabled.disabledAt, isNull);

      final retrieved = await repository.getTaskById('task_6');
      expect(retrieved!.disabledAt, isNull);
    });

    test('should get all tasks', () async {
      final now = DateTime.now();
      final task1 = Task(
        id: 'task_7',
        icon: 'work',
        name: 'Task 1',
        createdAt: now,
        updatedAt: now,
      );
      final task2 = Task(
        id: 'task_8',
        icon: 'home',
        name: 'Task 2',
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task1);
      await repository.createTask(task2);

      final allTasks = await repository.getAllTasks();
      expect(allTasks.length, 2);
    });

    test('should get only active tasks', () async {
      final now = DateTime.now();
      final task1 = Task(
        id: 'task_9',
        icon: 'work',
        name: 'Active Task',
        createdAt: now,
        updatedAt: now,
      );
      final task2 = Task(
        id: 'task_10',
        icon: 'home',
        name: 'Disabled Task',
        disabledAt: now,
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task1);
      await repository.createTask(task2);

      final activeTasks = await repository.getActiveTasks();
      expect(activeTasks.length, 1);
      expect(activeTasks.first.id, 'task_9');
    });

    test('should update task criteria', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_11',
        icon: 'work',
        name: 'Task',
        criterionIds: ['criterion_1'],
        createdAt: now,
        updatedAt: now,
      );

      await repository.createTask(task);
      await repository.updateTaskCriteria('task_11', ['criterion_2', 'criterion_3']);

      final retrieved = await repository.getTaskById('task_11');
      expect(retrieved!.criterionIds, ['criterion_2', 'criterion_3']);
    });

    test('should return null for non-existent task', () async {
      final task = await repository.getTaskById('non_existent');
      expect(task, isNull);
    });

    test('should throw error when disabling non-existent task', () async {
      expect(
        () => repository.disableTask('non_existent', DateTime.now()),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('should throw error when enabling non-existent task', () async {
      expect(
        () => repository.enableTask('non_existent'),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}


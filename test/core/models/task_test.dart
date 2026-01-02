import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/models/models.dart';

void main() {
  group('Task', () {
    test('should create a task with all required fields', () {
      final now = DateTime.now();
      final task = Task(
        id: 'task_1',
        icon: 'work',
        name: 'Test Task',
        motto: 'Test Motto',
        criterionIds: ['criterion_1', 'criterion_2'],
        createdAt: now,
        updatedAt: now,
      );

      expect(task.id, 'task_1');
      expect(task.icon, 'work');
      expect(task.name, 'Test Task');
      expect(task.motto, 'Test Motto');
      expect(task.criterionIds, ['criterion_1', 'criterion_2']);
      expect(task.createdAt, now);
      expect(task.updatedAt, now);
      expect(task.disabledAt, isNull);
    });

    test('should create a task with optional fields', () {
      final now = DateTime.now();
      final task = Task(
        id: 'task_2',
        icon: 'home',
        name: 'Another Task',
        createdAt: now,
        updatedAt: now,
      );

      expect(task.motto, isNull);
      expect(task.criterionIds, isEmpty);
      expect(task.disabledAt, isNull);
    });

    test('should support copyWith', () {
      final now = DateTime.now();
      final task = Task(
        id: 'task_3',
        icon: 'work',
        name: 'Original Task',
        createdAt: now,
        updatedAt: now,
      );

      final updated = task.copyWith(
        name: 'Updated Task',
        motto: 'New Motto',
      );

      expect(updated.id, task.id);
      expect(updated.icon, task.icon);
      expect(updated.name, 'Updated Task');
      expect(updated.motto, 'New Motto');
      expect(updated.createdAt, task.createdAt);
      expect(updated.updatedAt, task.updatedAt);
    });

    test('should serialize and deserialize to/from JSON', () {
      final now = DateTime.now();
      final task = Task(
        id: 'task_4',
        icon: 'work',
        name: 'JSON Task',
        motto: 'Test Motto',
        criterionIds: ['criterion_1'],
        createdAt: now,
        updatedAt: now,
        disabledAt: now.add(Duration(days: 1)),
      );

      final json = task.toJson();
      final deserialized = Task.fromJson(json);

      expect(deserialized.id, task.id);
      expect(deserialized.icon, task.icon);
      expect(deserialized.name, task.name);
      expect(deserialized.motto, task.motto);
      expect(deserialized.criterionIds, task.criterionIds);
      expect(deserialized.createdAt, task.createdAt);
      expect(deserialized.updatedAt, task.updatedAt);
      expect(deserialized.disabledAt, task.disabledAt);
    });
  });
}


import 'package:drift/drift.dart';
import '../../database/app_database.dart' as db;
import '../../models/models.dart';
import '../task_repository.dart';

/// Implementation of TaskRepository using Drift database.
class TaskRepositoryImpl implements TaskRepository {
  final db.AppDatabase _database;

  TaskRepositoryImpl(this._database);

  @override
  Future<Task> createTask(Task task) async {
    await _database.into(_database.tasks).insert(
          db.TasksCompanion(
            id: Value(task.id),
            icon: Value(task.icon),
            name: Value(task.name),
            motto: Value(task.motto),
            color: Value(task.color),
            createdAt: Value(task.createdAt),
            updatedAt: Value(task.updatedAt),
            disabledAt: Value(task.disabledAt),
          ),
        );

    // Insert criterion associations
    if (task.criterionIds.isNotEmpty) {
      await _updateTaskCriteria(task.id, task.criterionIds);
    }

    return task;
  }

  @override
  Future<Task> updateTask(Task task) async {
    await (_database.update(_database.tasks)..where((t) => t.id.equals(task.id)))
        .write(
          db.TasksCompanion(
            icon: Value(task.icon),
            name: Value(task.name),
            motto: Value(task.motto),
            color: Value(task.color),
            updatedAt: Value(task.updatedAt),
            disabledAt: Value(task.disabledAt),
          ),
        );

    // Update criterion associations
    await _updateTaskCriteria(task.id, task.criterionIds);

    return task;
  }

  @override
  Future<void> deleteTask(String taskId) async {
    // Delete criterion associations first
    await (_database.delete(_database.taskCriteria)
          ..where((tc) => tc.taskId.equals(taskId)))
        .go();

    // Delete the task
    await (_database.delete(_database.tasks)
          ..where((t) => t.id.equals(taskId)))
        .go();
  }

  @override
  Future<Task> disableTask(String taskId, DateTime disabledAt) async {
    final task = await getTaskById(taskId);
    if (task == null) {
      throw ArgumentError('Task not found: $taskId');
    }

    final updatedTask = task.copyWith(
      disabledAt: disabledAt,
      updatedAt: DateTime.now(),
    );

    return await updateTask(updatedTask);
  }

  @override
  Future<Task> enableTask(String taskId) async {
    final task = await getTaskById(taskId);
    if (task == null) {
      throw ArgumentError('Task not found: $taskId');
    }

    final updatedTask = task.copyWith(
      disabledAt: null,
      updatedAt: DateTime.now(),
    );

    return await updateTask(updatedTask);
  }

  @override
  Future<List<Task>> getAllTasks() async {
    final taskRows = await (_database.select(_database.tasks)).get();
    final tasks = <Task>[];

    for (final row in taskRows) {
      final criterionIds = await _getTaskCriterionIds(row.id);
      tasks.add(_rowToTask(row, criterionIds));
    }

    return tasks;
  }

  @override
  Future<List<Task>> getActiveTasks() async {
    final taskRows = await (_database.select(_database.tasks)
          ..where((t) => t.disabledAt.isNull()))
        .get();
    final tasks = <Task>[];

    for (final row in taskRows) {
      final criterionIds = await _getTaskCriterionIds(row.id);
      tasks.add(_rowToTask(row, criterionIds));
    }

    return tasks;
  }

  @override
  Future<Task?> getTaskById(String taskId) async {
    final row = await (_database.select(_database.tasks)
          ..where((t) => t.id.equals(taskId)))
        .getSingleOrNull();

    if (row == null) return null;

    final criterionIds = await _getTaskCriterionIds(taskId);
    return _rowToTask(row, criterionIds);
  }

  @override
  Future<Task?> getActiveTask() async {
    // This will be implemented when we have session tracking
    // For now, return null
    return null;
  }

  @override
  Future<void> updateTaskCriteria(String taskId, List<String> criterionIds) async {
    await _updateTaskCriteria(taskId, criterionIds);
  }

  /// Updates the criterion associations for a task.
  Future<void> _updateTaskCriteria(String taskId, List<String> criterionIds) async {
    // Delete existing associations
    await (_database.delete(_database.taskCriteria)
          ..where((tc) => tc.taskId.equals(taskId)))
        .go();

    // Insert new associations
    if (criterionIds.isNotEmpty) {
      await _database.batch((batch) {
        for (final criterionId in criterionIds) {
          batch.insert(
            _database.taskCriteria,
            db.TaskCriteriaCompanion(
              taskId: Value(taskId),
              criterionId: Value(criterionId),
            ),
          );
        }
      });
    }
  }

  /// Gets the criterion IDs associated with a task.
  Future<List<String>> _getTaskCriterionIds(String taskId) async {
    final rows = await (_database.select(_database.taskCriteria)
          ..where((tc) => tc.taskId.equals(taskId)))
        .get();
    return rows.map((row) => row.criterionId).toList();
  }

  /// Converts a database row to a Task model.
  Task _rowToTask(db.Task row, List<String> criterionIds) {
    return Task(
      id: row.id,
      icon: row.icon,
      name: row.name,
      motto: row.motto,
      color: row.color,
      criterionIds: criterionIds,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
      disabledAt: row.disabledAt,
    );
  }
}


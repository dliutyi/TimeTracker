import '../models/models.dart';

/// Repository interface for task operations.
abstract class TaskRepository {
  /// Creates a new task.
  Future<Task> createTask(Task task);

  /// Updates an existing task.
  Future<Task> updateTask(Task task);

  /// Deletes a task permanently.
  Future<void> deleteTask(String taskId);

  /// Disables a task (soft delete).
  Future<Task> disableTask(String taskId, DateTime disabledAt);

  /// Enables a previously disabled task.
  Future<Task> enableTask(String taskId);

  /// Gets all tasks (including disabled ones).
  Future<List<Task>> getAllTasks();

  /// Gets only active (non-disabled) tasks.
  Future<List<Task>> getActiveTasks();

  /// Gets a task by its ID.
  Future<Task?> getTaskById(String taskId);

  /// Gets the currently active task (if any).
  /// An active task is one that has an ongoing session.
  Future<Task?> getActiveTask();

  /// Updates the criteria associations for a task.
  Future<void> updateTaskCriteria(String taskId, List<String> criterionIds);
}


import 'package:drift/drift.dart';

/// Junction table for many-to-many relationship between tasks and criteria.
class TaskCriteria extends Table {
  /// Foreign key to the task
  TextColumn get taskId => text()();

  /// Foreign key to the criterion
  TextColumn get criterionId => text()();

  @override
  Set<Column> get primaryKey => {taskId, criterionId};
}


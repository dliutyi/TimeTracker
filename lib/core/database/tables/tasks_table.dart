import 'package:drift/drift.dart';

/// Table definition for tasks.
class Tasks extends Table {
  /// Unique identifier for the task
  TextColumn get id => text()();

  /// Icon identifier (String representation of icon)
  TextColumn get icon => text()();

  /// Task name
  TextColumn get name => text()();

  /// Optional motivational phrase or description
  TextColumn get motto => text().nullable()();

  /// Timestamp when the task was created
  DateTimeColumn get createdAt => dateTime()();

  /// Timestamp when the task was last updated
  DateTimeColumn get updatedAt => dateTime()();

  /// Timestamp when the task was disabled (null if active)
  DateTimeColumn get disabledAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}


import 'package:drift/drift.dart';

/// Table definition for time tracking sessions.
class Sessions extends Table {
  /// Unique identifier for the session
  TextColumn get id => text()();

  /// Foreign key to the task
  TextColumn get taskId => text()();

  /// Start datetime of the session
  DateTimeColumn get startDateTime => dateTime()();

  /// End datetime of the session
  DateTimeColumn get endDateTime => dateTime()();

  /// Timestamp when the session was created
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}


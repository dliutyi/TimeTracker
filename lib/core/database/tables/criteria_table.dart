import 'package:drift/drift.dart';

/// Table definition for criteria.
class Criteria extends Table {
  /// Unique identifier for the criterion
  TextColumn get id => text()();

  /// Icon or emoji identifier (String)
  TextColumn get icon => text()();

  /// Criterion name
  TextColumn get name => text()();

  /// Type of criterion ('discrete' or 'continuous')
  TextColumn get type => text()();

  /// Timestamp when the criterion was created
  DateTimeColumn get createdAt => dateTime()();

  /// Timestamp when the criterion was last updated
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}


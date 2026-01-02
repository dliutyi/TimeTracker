import 'package:drift/drift.dart';

/// Table definition for ratings.
/// Stores ratings for sessions, one row per criterion rating.
class Ratings extends Table {
  /// Unique identifier for the rating
  TextColumn get id => text()();

  /// Foreign key to the session
  TextColumn get sessionId => text()();

  /// Foreign key to the criterion
  TextColumn get criterionId => text()();

  /// Rating value (JSON string for discrete, numeric string for continuous)
  TextColumn get value => text()();

  /// Timestamp when the rating was created
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}


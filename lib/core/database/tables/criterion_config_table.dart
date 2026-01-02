import 'package:drift/drift.dart';

/// Table definition for criterion configuration.
/// Stores type-specific configuration for criteria.
class CriterionConfigs extends Table {
  /// Foreign key to the criterion
  TextColumn get criterionId => text()();

  /// For discrete criteria: selection limit
  IntColumn get selectionLimit => integer().nullable()();

  /// For discrete criteria: JSON array of values
  TextColumn get values => text().nullable()();

  /// For continuous criteria: minimum value
  RealColumn get minValue => real().nullable()();

  /// For continuous criteria: maximum value
  RealColumn get maxValue => real().nullable()();

  /// For continuous criteria: step value
  RealColumn get stepValue => real().nullable()();

  @override
  Set<Column> get primaryKey => {criterionId};
}


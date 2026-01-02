import 'package:drift/drift.dart';

/// Table definition for application settings.
class Settings extends Table {
  /// Setting key
  TextColumn get key => text()();

  /// Setting value (JSON string)
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}


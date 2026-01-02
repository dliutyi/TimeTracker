import 'package:drift/drift.dart';
import '../../database/app_database.dart' as db;
import '../settings_repository.dart';

/// Implementation of SettingsRepository using Drift database.
class SettingsRepositoryImpl implements SettingsRepository {
  final db.AppDatabase _database;

  SettingsRepositoryImpl(this._database);

  @override
  Future<String?> getSetting(String key) async {
    final row = await (_database.select(_database.settings)
          ..where((s) => s.key.equals(key)))
        .getSingleOrNull();

    return row?.value;
  }

  @override
  Future<void> setSetting(String key, String value) async {
    await _database.into(_database.settings).insertOnConflictUpdate(
          db.SettingsCompanion(
            key: Value(key),
            value: Value(value),
          ),
        );
  }

  @override
  Future<Map<String, String>> getAllSettings() async {
    final rows = await (_database.select(_database.settings)).get();
    return {for (var row in rows) row.key: row.value};
  }

  @override
  Future<void> deleteSetting(String key) async {
    await (_database.delete(_database.settings)
          ..where((s) => s.key.equals(key)))
        .go();
  }
}


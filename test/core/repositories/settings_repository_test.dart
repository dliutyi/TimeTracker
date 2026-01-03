import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/repositories/impl/settings_repository_impl.dart';

void main() {
  late db.AppDatabase database;
  late SettingsRepositoryImpl repository;

  setUp(() async {
    database = db.AppDatabase.test(NativeDatabase.memory());
    repository = SettingsRepositoryImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('SettingsRepository', () {
    test('should get a setting', () async {
      await repository.setSetting('test_key', 'test_value');

      final value = await repository.getSetting('test_key');
      expect(value, 'test_value');
    });

    test('should return null for non-existent setting', () async {
      final value = await repository.getSetting('non_existent');
      expect(value, isNull);
    });

    test('should set a setting', () async {
      await repository.setSetting('new_key', 'new_value');

      final value = await repository.getSetting('new_key');
      expect(value, 'new_value');
    });

    test('should update an existing setting', () async {
      await repository.setSetting('update_key', 'old_value');
      await repository.setSetting('update_key', 'new_value');

      final value = await repository.getSetting('update_key');
      expect(value, 'new_value');
    });

    test('should get all settings', () async {
      await repository.setSetting('key1', 'value1');
      await repository.setSetting('key2', 'value2');
      await repository.setSetting('key3', 'value3');

      final allSettings = await repository.getAllSettings();
      expect(allSettings.length, 3);
      expect(allSettings['key1'], 'value1');
      expect(allSettings['key2'], 'value2');
      expect(allSettings['key3'], 'value3');
    });

    test('should delete a setting', () async {
      await repository.setSetting('delete_key', 'delete_value');
      await repository.deleteSetting('delete_key');

      final value = await repository.getSetting('delete_key');
      expect(value, isNull);
    });

    test('should handle empty settings', () async {
      final allSettings = await repository.getAllSettings();
      expect(allSettings, isEmpty);
    });
  });
}


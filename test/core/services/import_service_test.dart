import 'dart:convert';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/models/models.dart';
import 'package:yudi_time_tracker/core/repositories/impl/criterion_repository_impl.dart';
import 'package:yudi_time_tracker/core/repositories/impl/session_repository_impl.dart';
import 'package:yudi_time_tracker/core/repositories/impl/settings_repository_impl.dart';
import 'package:yudi_time_tracker/core/repositories/impl/task_repository_impl.dart';
import 'package:yudi_time_tracker/core/services/export_service.dart';
import 'package:yudi_time_tracker/core/services/import_service.dart';

void main() {
  late db.AppDatabase database;
  late TaskRepositoryImpl taskRepository;
  late CriterionRepositoryImpl criterionRepository;
  late SessionRepositoryImpl sessionRepository;
  late SettingsRepositoryImpl settingsRepository;
  late ExportService exportService;
  late ImportService importService;

  setUp(() async {
    database = db.AppDatabase.test(NativeDatabase.memory());
    taskRepository = TaskRepositoryImpl(database);
    criterionRepository = CriterionRepositoryImpl(database);
    sessionRepository = SessionRepositoryImpl(database);
    settingsRepository = SettingsRepositoryImpl(database);
    exportService = ExportService(
      taskRepository: taskRepository,
      criterionRepository: criterionRepository,
      sessionRepository: sessionRepository,
      settingsRepository: settingsRepository,
    );
    importService = ImportService(
      taskRepository: taskRepository,
      criterionRepository: criterionRepository,
      sessionRepository: sessionRepository,
      settingsRepository: settingsRepository,
      exportService: exportService,
    );
  });

  tearDown(() async {
    await database.close();
  });

  group('ImportService', () {
    test('should import data from JSON', () async {
      final now = DateTime.now();
      final exportData = {
        'version': '1.0.0',
        'exportDate': now.toIso8601String(),
        'data': {
          'criteria': [
            {
              'id': 'criterion_1',
              'icon': 'star',
              'name': 'Quality',
              'type': 'discrete',
              'config': {
                'type': 'Discrete',
                'selectionLimit': 2,
                'values': ['Excellent', 'Good'],
              },
              'createdAt': now.toIso8601String(),
              'updatedAt': now.toIso8601String(),
            },
          ],
          'tasks': [
            {
              'id': 'task_1',
              'icon': 'work',
              'name': 'Test Task',
              'motto': 'Test Motto',
              'criterionIds': ['criterion_1'],
              'createdAt': now.toIso8601String(),
              'updatedAt': now.toIso8601String(),
              'disabledAt': null,
            },
          ],
          'sessions': [
            {
              'id': 'session_1',
              'taskId': 'task_1',
              'startDateTime': now.toIso8601String(),
              'endDateTime': now.add(Duration(hours: 1)).toIso8601String(),
              'ratings': {},
              'createdAt': now.toIso8601String(),
            },
          ],
          'settings': {
            'theme': 'dark',
          },
        },
      };

      final jsonData = jsonEncode(exportData);
      await importService.importData(jsonData);

      // Verify imported data
      final tasks = await taskRepository.getAllTasks();
      expect(tasks.length, 1);
      expect(tasks.first.id, 'task_1');

      final criteria = await criterionRepository.getAllCriteria();
      expect(criteria.length, 1);
      expect(criteria.first.id, 'criterion_1');

      final sessions = await sessionRepository.getAllSessions();
      expect(sessions.length, 1);
      expect(sessions.first.id, 'session_1');
    });

    test('should purge existing data before import', () async {
      final now = DateTime.now();

      // Create existing data
      final existingTask = Task(
        id: 'existing_task',
        icon: 'work',
        name: 'Existing Task',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );
      await taskRepository.createTask(existingTask);

      // Import new data
      final exportData = {
        'version': '1.0.0',
        'exportDate': now.toIso8601String(),
        'data': {
          'criteria': [],
          'tasks': [
            {
              'id': 'new_task',
              'icon': 'home',
              'name': 'New Task',
              'criterionIds': [],
              'createdAt': now.toIso8601String(),
              'updatedAt': now.toIso8601String(),
              'disabledAt': null,
            },
          ],
          'sessions': [],
          'settings': {},
        },
      };

      final jsonData = jsonEncode(exportData);
      await importService.importData(jsonData);

      // Verify old data is gone
      final tasks = await taskRepository.getAllTasks();
      expect(tasks.length, 1);
      expect(tasks.first.id, 'new_task');
      expect(tasks.first.id, isNot('existing_task'));
    });

    test('should preserve locale setting during import', () async {
      final now = DateTime.now();

      // Set locale before import
      await settingsRepository.setSetting('app_locale', 'en_US');

      final exportData = {
        'version': '1.0.0',
        'exportDate': now.toIso8601String(),
        'data': {
          'criteria': [],
          'tasks': [],
          'sessions': [],
          'settings': {
            'app_locale': 'es_ES',
            'theme': 'dark',
          },
        },
      };

      final jsonData = jsonEncode(exportData);
      await importService.importData(jsonData);

      // Verify locale is preserved
      final locale = await settingsRepository.getSetting('app_locale');
      expect(locale, 'en_US'); // Should remain unchanged

      // Verify other settings are imported
      final theme = await settingsRepository.getSetting('theme');
      expect(theme, 'dark');
    });

    test('should throw ImportException for invalid JSON', () async {
      expect(
        () => importService.importData('invalid json'),
        throwsA(isA<ImportException>()),
      );
    });

    test('should throw ImportException for invalid data structure', () async {
      final invalidData = {
        'version': '1.0.0',
        'exportDate': DateTime.now().toIso8601String(),
        // Missing 'data' section
      };

      final jsonData = jsonEncode(invalidData);
      expect(
        () => importService.importData(jsonData),
        throwsA(isA<ImportException>()),
      );
    });

    test('should import criteria before tasks', () async {
      final now = DateTime.now();
      final exportData = {
        'version': '1.0.0',
        'exportDate': now.toIso8601String(),
        'data': {
          'criteria': [
            {
              'id': 'criterion_1',
              'icon': 'star',
              'name': 'Quality',
              'type': 'discrete',
              'config': {
                'type': 'Discrete',
                'selectionLimit': 1,
                'values': ['A'],
              },
              'createdAt': now.toIso8601String(),
              'updatedAt': now.toIso8601String(),
            },
          ],
          'tasks': [
            {
              'id': 'task_1',
              'icon': 'work',
              'name': 'Task with Criterion',
              'criterionIds': ['criterion_1'],
              'createdAt': now.toIso8601String(),
              'updatedAt': now.toIso8601String(),
              'disabledAt': null,
            },
          ],
          'sessions': [],
          'settings': {},
        },
      };

      final jsonData = jsonEncode(exportData);
      await importService.importData(jsonData);

      // Verify both were imported
      final tasks = await taskRepository.getAllTasks();
      final criteria = await criterionRepository.getAllCriteria();
      expect(tasks.length, 1);
      expect(criteria.length, 1);
      expect(tasks.first.criterionIds, contains('criterion_1'));
    });
  });
}


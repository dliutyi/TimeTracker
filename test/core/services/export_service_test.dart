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

void main() {
  late db.AppDatabase database;
  late TaskRepositoryImpl taskRepository;
  late CriterionRepositoryImpl criterionRepository;
  late SessionRepositoryImpl sessionRepository;
  late SettingsRepositoryImpl settingsRepository;
  late ExportService exportService;

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
  });

  tearDown(() async {
    await database.close();
  });

  group('ExportService', () {
    test('should export empty data', () async {
      final jsonData = await exportService.exportData();
      expect(jsonData, isNotEmpty);

      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );
      expect(data['version'], '1.0.0');
      expect(data['data'], isNotNull);
      expect(data['data']['tasks'], isEmpty);
      expect(data['data']['criteria'], isEmpty);
      expect(data['data']['sessions'], isEmpty);
      expect(data['data']['settings'], isEmpty);
    });

    test('should export tasks', () async {
      final now = DateTime.now();
      final task = Task(
        id: 'task_1',
        icon: 'work',
        name: 'Test Task',
        motto: 'Test Motto',
        criterionIds: [],
        createdAt: now,
        updatedAt: now,
      );

      await taskRepository.createTask(task);

      final jsonData = await exportService.exportData();
      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );

      expect(data['data']['tasks'], hasLength(1));
      final exportedTask = (data['data']['tasks'] as List).first as Map;
      expect(exportedTask['id'], 'task_1');
      expect(exportedTask['name'], 'Test Task');
    });

    test('should export criteria', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_1',
        icon: 'star',
        name: 'Quality',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 2,
          values: ['Excellent', 'Good'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await criterionRepository.createCriterion(criterion);

      final jsonData = await exportService.exportData();
      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );

      expect(data['data']['criteria'], hasLength(1));
      final exportedCriterion = (data['data']['criteria'] as List).first as Map;
      expect(exportedCriterion['id'], 'criterion_1');
      expect(exportedCriterion['name'], 'Quality');
    });

    test('should export sessions', () async {
      final now = DateTime.now();
      final session = Session(
        id: 'session_1',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        ratings: {
          'criterion_1': RatingValue.discrete(values: ['Excellent']),
        },
        createdAt: now,
      );

      await sessionRepository.createSession(session);

      final jsonData = await exportService.exportData();
      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );

      expect(data['data']['sessions'], hasLength(1));
      final exportedSession = (data['data']['sessions'] as List).first as Map;
      expect(exportedSession['id'], 'session_1');
      expect(exportedSession['taskId'], 'task_1');
    });

    test('should export settings', () async {
      await settingsRepository.setSetting('theme', 'dark');
      await settingsRepository.setSetting('locale', 'en_US');

      final jsonData = await exportService.exportData();
      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );

      expect(data['data']['settings'], isA<Map>());
      final settings = data['data']['settings'] as Map;
      expect(settings['theme'], 'dark');
      expect(settings['locale'], 'en_US');
    });

    test('should export complete data', () async {
      final now = DateTime.now();

      // Create test data
      final task = Task(
        id: 'task_1',
        icon: 'work',
        name: 'Test Task',
        createdAt: now,
        updatedAt: now,
      );
      await taskRepository.createTask(task);

      final criterion = Criterion(
        id: 'criterion_1',
        icon: 'star',
        name: 'Quality',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A'],
        ),
        createdAt: now,
        updatedAt: now,
      );
      await criterionRepository.createCriterion(criterion);

      final session = Session(
        id: 'session_1',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );
      await sessionRepository.createSession(session);

      await settingsRepository.setSetting('test', 'value');

      final jsonData = await exportService.exportData();
      final data = Map<String, dynamic>.from(
        jsonDecode(jsonData) as Map,
      );

      expect(data['data']['tasks'], hasLength(1));
      expect(data['data']['criteria'], hasLength(1));
      expect(data['data']['sessions'], hasLength(1));
      expect(data['data']['settings'], isNotEmpty);
    });

    test('should validate export data structure', () {
      final validData = {
        'version': '1.0.0',
        'exportDate': DateTime.now().toIso8601String(),
        'data': {
          'tasks': [],
          'criteria': [],
          'sessions': [],
          'settings': {},
        },
      };

      expect(exportService.validateExportData(validData), isTrue);
    });

    test('should reject invalid export data - missing version', () {
      final invalidData = {
        'exportDate': DateTime.now().toIso8601String(),
        'data': {
          'tasks': [],
          'criteria': [],
          'sessions': [],
          'settings': {},
        },
      };

      expect(exportService.validateExportData(invalidData), isFalse);
    });

    test('should reject invalid export data - missing data section', () {
      final invalidData = {
        'version': '1.0.0',
        'exportDate': DateTime.now().toIso8601String(),
      };

      expect(exportService.validateExportData(invalidData), isFalse);
    });

    test('should reject invalid export data - wrong data types', () {
      final invalidData = {
        'version': '1.0.0',
        'exportDate': DateTime.now().toIso8601String(),
        'data': {
          'tasks': 'not an array',
          'criteria': [],
          'sessions': [],
          'settings': {},
        },
      };

      expect(exportService.validateExportData(invalidData), isFalse);
    });
  });
}


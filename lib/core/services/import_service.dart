import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/repository_providers.dart';
import '../repositories/task_repository.dart';
import '../repositories/criterion_repository.dart';
import '../repositories/session_repository.dart';
import '../repositories/settings_repository.dart';
import '../models/models.dart';
import 'export_service.dart';

/// Service for importing app data from JSON
class ImportService {
  final TaskRepository _taskRepository;
  final CriterionRepository _criterionRepository;
  final SessionRepository _sessionRepository;
  final SettingsRepository _settingsRepository;
  final ExportService _exportService;

  ImportService({
    required TaskRepository taskRepository,
    required CriterionRepository criterionRepository,
    required SessionRepository sessionRepository,
    required SettingsRepository settingsRepository,
    required ExportService exportService,
  })  : _taskRepository = taskRepository,
        _criterionRepository = criterionRepository,
        _sessionRepository = sessionRepository,
        _settingsRepository = settingsRepository,
        _exportService = exportService;

  /// Imports data from a JSON string
  /// Returns true if successful, throws ImportException on error
  Future<void> importData(String jsonData) async {
    try {
      // Parse JSON
      final data = jsonDecode(jsonData) as Map<String, dynamic>;

      // Validate structure
      if (!_exportService.validateExportData(data)) {
        throw ImportException('Invalid export file format');
      }

      final dataSection = data['data'] as Map<String, dynamic>;

      // Start import process
      // First, purge all existing data
      await _purgeAllData();

      // Import in order: criteria first (tasks depend on them), then tasks, then sessions, then settings
      try {
        // Import criteria
        final criteriaJson = dataSection['criteria'] as List<dynamic>;
        for (final criterionJson in criteriaJson) {
          final criterion = Criterion.fromJson(criterionJson as Map<String, dynamic>);
          await _criterionRepository.createCriterion(criterion);
        }

        // Import tasks
        final tasksJson = dataSection['tasks'] as List<dynamic>;
        for (final taskJson in tasksJson) {
          final task = Task.fromJson(taskJson as Map<String, dynamic>);
          await _taskRepository.createTask(task);
        }

        // Import sessions (which include ratings)
        final sessionsJson = dataSection['sessions'] as List<dynamic>;
        for (final sessionJson in sessionsJson) {
          final session = Session.fromJson(sessionJson as Map<String, dynamic>);
          await _sessionRepository.createSession(session);
        }

        // Import settings (but preserve locale setting if it exists)
        final settingsJson = dataSection['settings'] as Map<String, dynamic>;
        for (final entry in settingsJson.entries) {
          // Skip locale setting to preserve current locale
          if (entry.key == 'app_locale') {
            continue;
          }
          await _settingsRepository.setSetting(entry.key, entry.value as String);
        }
      } catch (e) {
        // If import fails, we've already purged data, so we can't rollback
        // This is a critical error - the user should be warned
        throw ImportException('Failed to import data: $e. Your existing data has been deleted.');
      }
    } catch (e) {
      if (e is ImportException) {
        rethrow;
      }
      throw ImportException('Failed to parse import file: $e');
    }
  }

  /// Purges all existing data from the database
  Future<void> _purgeAllData() async {
    // Get all data first
    final tasks = await _taskRepository.getAllTasks();
    final criteria = await _criterionRepository.getAllCriteria();
    final sessions = await _sessionRepository.getAllSessions();

    // Delete in reverse order of dependencies
    // Delete sessions first (they reference tasks and criteria)
    for (final session in sessions) {
      await _sessionRepository.deleteSession(session.id);
    }

    // Delete tasks (they reference criteria)
    for (final task in tasks) {
      await _taskRepository.deleteTask(task.id);
    }

    // Delete criteria
    for (final criterion in criteria) {
      await _criterionRepository.deleteCriterion(criterion.id);
    }

    // Delete all settings except locale
    final settings = await _settingsRepository.getAllSettings();
    for (final key in settings.keys) {
      if (key != 'app_locale') {
        await _settingsRepository.deleteSetting(key);
      }
    }
  }
}

/// Exception thrown when import fails
class ImportException implements Exception {
  final String message;
  ImportException(this.message);

  @override
  String toString() => message;
}

/// Provider for ImportService
final importServiceProvider = Provider<ImportService>((ref) {
  return ImportService(
    taskRepository: ref.watch(taskRepositoryProvider),
    criterionRepository: ref.watch(criterionRepositoryProvider),
    sessionRepository: ref.watch(sessionRepositoryProvider),
    settingsRepository: ref.watch(settingsRepositoryProvider),
    exportService: ref.watch(exportServiceProvider),
  );
});


import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/repository_providers.dart';
import '../repositories/task_repository.dart';
import '../repositories/criterion_repository.dart';
import '../repositories/session_repository.dart';
import '../repositories/settings_repository.dart';
import '../models/models.dart';

/// Service for exporting app data to JSON
class ExportService {
  final TaskRepository _taskRepository;
  final CriterionRepository _criterionRepository;
  final SessionRepository _sessionRepository;
  final SettingsRepository _settingsRepository;

  ExportService({
    required TaskRepository taskRepository,
    required CriterionRepository criterionRepository,
    required SessionRepository sessionRepository,
    required SettingsRepository settingsRepository,
  })  : _taskRepository = taskRepository,
        _criterionRepository = criterionRepository,
        _sessionRepository = sessionRepository,
        _settingsRepository = settingsRepository;

  /// Exports all app data to a JSON string
  Future<String> exportData() async {
    try {
      // Collect all data
      final tasks = await _taskRepository.getAllTasks();
      final criteria = await _criterionRepository.getAllCriteria();
      final sessions = await _sessionRepository.getAllSessions();
      final settings = await _settingsRepository.getAllSettings();

      // Create export data structure
      final exportData = {
        'version': '1.0.0',
        'exportDate': DateTime.now().toIso8601String(),
        'data': {
          'tasks': tasks.map((task) => task.toJson()).toList(),
          'criteria': criteria.map((criterion) => criterion.toJson()).toList(),
          'sessions': sessions.map((session) => session.toJson()).toList(),
          'settings': settings,
        },
      };

      // Convert to JSON with pretty printing
      const encoder = JsonEncoder.withIndent('  ');
      return encoder.convert(exportData);
    } catch (e) {
      throw ExportException('Failed to export data: $e');
    }
  }

  /// Validates the export data structure
  bool validateExportData(Map<String, dynamic> data) {
    try {
      // Check required fields
      if (!data.containsKey('version') ||
          !data.containsKey('exportDate') ||
          !data.containsKey('data')) {
        return false;
      }

      final dataSection = data['data'] as Map<String, dynamic>?;
      if (dataSection == null) {
        return false;
      }

      // Check that data section has expected keys
      if (!dataSection.containsKey('tasks') ||
          !dataSection.containsKey('criteria') ||
          !dataSection.containsKey('sessions') ||
          !dataSection.containsKey('settings')) {
        return false;
      }

      // Validate that arrays are actually arrays
      if (dataSection['tasks'] is! List ||
          dataSection['criteria'] is! List ||
          dataSection['sessions'] is! List ||
          dataSection['settings'] is! Map) {
        return false;
      }

      return true;
    } catch (e) {
      return false;
    }
  }
}

/// Exception thrown when export fails
class ExportException implements Exception {
  final String message;
  ExportException(this.message);

  @override
  String toString() => message;
}

/// Provider for ExportService
final exportServiceProvider = Provider<ExportService>((ref) {
  return ExportService(
    taskRepository: ref.watch(taskRepositoryProvider),
    criterionRepository: ref.watch(criterionRepositoryProvider),
    sessionRepository: ref.watch(sessionRepositoryProvider),
    settingsRepository: ref.watch(settingsRepositoryProvider),
  );
});


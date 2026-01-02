import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/database_service.dart';
import '../database/app_database.dart' as db;
import 'task_repository.dart';
import 'criterion_repository.dart';
import 'session_repository.dart';
import 'settings_repository.dart';
import 'impl/task_repository_impl.dart';
import 'impl/criterion_repository_impl.dart';
import 'impl/session_repository_impl.dart';
import 'impl/settings_repository_impl.dart';

/// Provider for the database instance.
final databaseProvider = Provider<db.AppDatabase>((ref) {
  return DatabaseService.instance.database;
});

/// Provider for TaskRepository.
final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return TaskRepositoryImpl(database);
});

/// Provider for CriterionRepository.
final criterionRepositoryProvider = Provider<CriterionRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return CriterionRepositoryImpl(database);
});

/// Provider for SessionRepository.
final sessionRepositoryProvider = Provider<SessionRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return SessionRepositoryImpl(database);
});

/// Provider for SettingsRepository.
final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return SettingsRepositoryImpl(database);
});


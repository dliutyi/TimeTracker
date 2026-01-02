import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'tables/tasks_table.dart';
import 'tables/criteria_table.dart';
import 'tables/criterion_config_table.dart';
import 'tables/task_criteria_table.dart';
import 'tables/sessions_table.dart';
import 'tables/ratings_table.dart';
import 'tables/settings_table.dart';

part 'app_database.g.dart';

/// Main database class for the YuDi Time Tracker application.
@DriftDatabase(tables: [
  Tasks,
  Criteria,
  CriterionConfigs,
  TaskCriteria,
  Sessions,
  Ratings,
  Settings,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Future migrations will be handled here
      },
      beforeOpen: (details) async {
        // Create indexes after tables are created
        if (details.wasCreated) {
          await _createIndexes();
        }
      },
    );
  }

  /// Creates indexes for better query performance.
  Future<void> _createIndexes() async {
    // Index for sessions by task_id and datetime
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_sessions_task_datetime '
      'ON sessions(task_id, start_datetime DESC)',
    );

    // Index for task_criteria by task_id
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_task_criteria_task_id '
      'ON task_criteria(task_id)',
    );

    // Index for task_criteria by criterion_id
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_task_criteria_criterion_id '
      'ON task_criteria(criterion_id)',
    );

    // Index for ratings by session_id
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_ratings_session_id '
      'ON ratings(session_id)',
    );

    // Index for ratings by criterion_id
    await customStatement(
      'CREATE INDEX IF NOT EXISTS idx_ratings_criterion_id '
      'ON ratings(criterion_id)',
    );
  }
}

/// Opens a database connection.
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'yudi_time_tracker.db'));
    return NativeDatabase(file);
  });
}


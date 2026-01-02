import 'dart:convert';
import 'package:drift/drift.dart';
import '../../database/app_database.dart' as db;
import '../../models/models.dart';
import '../criterion_repository.dart';

/// Implementation of CriterionRepository using Drift database.
class CriterionRepositoryImpl implements CriterionRepository {
  final db.AppDatabase _database;

  CriterionRepositoryImpl(this._database);

  @override
  Future<Criterion> createCriterion(Criterion criterion) async {
    await _database.into(_database.criteria).insert(
          db.CriteriaCompanion(
            id: Value(criterion.id),
            icon: Value(criterion.icon),
            name: Value(criterion.name),
            type: Value(criterion.type.name),
            createdAt: Value(criterion.createdAt),
            updatedAt: Value(criterion.updatedAt),
          ),
        );

    // Insert configuration
    await _saveCriterionConfig(criterion.id, criterion.config);

    return criterion;
  }

  @override
  Future<Criterion> updateCriterion(Criterion criterion) async {
    await (_database.update(_database.criteria)
          ..where((c) => c.id.equals(criterion.id)))
        .write(
          db.CriteriaCompanion(
            icon: Value(criterion.icon),
            name: Value(criterion.name),
            type: Value(criterion.type.name),
            updatedAt: Value(criterion.updatedAt),
          ),
        );

    // Update configuration
    await _saveCriterionConfig(criterion.id, criterion.config);

    return criterion;
  }

  @override
  Future<void> deleteCriterion(String criterionId) async {
    // Delete from task associations (cascade)
    await (_database.delete(_database.taskCriteria)
          ..where((tc) => tc.criterionId.equals(criterionId)))
        .go();

    // Delete configuration
    await (_database.delete(_database.criterionConfigs)
          ..where((cc) => cc.criterionId.equals(criterionId)))
        .go();

    // Delete the criterion
    await (_database.delete(_database.criteria)
          ..where((c) => c.id.equals(criterionId)))
        .go();
  }

  @override
  Future<List<Criterion>> getAllCriteria() async {
    final rows = await (_database.select(_database.criteria)).get();
    final criteria = <Criterion>[];

    for (final row in rows) {
      final config = await _loadCriterionConfig(row.id, row.type);
      criteria.add(_rowToCriterion(row, config));
    }

    return criteria;
  }

  @override
  Future<Criterion?> getCriterionById(String criterionId) async {
    final row = await (_database.select(_database.criteria)
          ..where((c) => c.id.equals(criterionId)))
        .getSingleOrNull();

    if (row == null) return null;

    final config = await _loadCriterionConfig(criterionId, row.type);
    return _rowToCriterion(row, config);
  }

  @override
  Future<List<Criterion>> getCriteriaByUsageFrequency() async {
    // Get all task-criteria associations to count usage
    final taskCriteriaRows = await (_database.select(_database.taskCriteria)).get();

    // Count usage for each criterion
    final usageMap = <String, int>{};
    for (final row in taskCriteriaRows) {
      final criterionId = row.criterionId;
      usageMap[criterionId] = (usageMap[criterionId] ?? 0) + 1;
    }

    // Get all criteria and sort by usage
    final allCriteria = await getAllCriteria();
    allCriteria.sort((a, b) {
      final aUsage = usageMap[a.id] ?? 0;
      final bUsage = usageMap[b.id] ?? 0;
      return bUsage.compareTo(aUsage); // Descending order
    });

    return allCriteria;
  }

  @override
  Future<List<Criterion>> getCriteriaByIds(List<String> criterionIds) async {
    if (criterionIds.isEmpty) return [];

    final rows = await (_database.select(_database.criteria)
          ..where((c) => c.id.isIn(criterionIds)))
        .get();

    final criteria = <Criterion>[];
    for (final row in rows) {
      final config = await _loadCriterionConfig(row.id, row.type);
      criteria.add(_rowToCriterion(row, config));
    }

    return criteria;
  }

  /// Saves the configuration for a criterion.
  Future<void> _saveCriterionConfig(String criterionId, CriterionConfig config) async {
    await config.when(
      discrete: (selectionLimit, values) async {
        await _database.into(_database.criterionConfigs).insertOnConflictUpdate(
              db.CriterionConfigsCompanion(
                criterionId: Value(criterionId),
                selectionLimit: Value(selectionLimit),
                values: Value(jsonEncode(values)),
                minValue: const Value.absent(),
                maxValue: const Value.absent(),
                stepValue: const Value.absent(),
              ),
            );
      },
      continuous: (minValue, maxValue, stepValue) async {
        await _database.into(_database.criterionConfigs).insertOnConflictUpdate(
              db.CriterionConfigsCompanion(
                criterionId: Value(criterionId),
                selectionLimit: const Value.absent(),
                values: const Value.absent(),
                minValue: Value(minValue),
                maxValue: Value(maxValue),
                stepValue: Value(stepValue),
              ),
            );
      },
    );
  }

  /// Loads the configuration for a criterion.
  Future<CriterionConfig> _loadCriterionConfig(String criterionId, String type) async {
    final row = await (_database.select(_database.criterionConfigs)
          ..where((cc) => cc.criterionId.equals(criterionId)))
        .getSingleOrNull();

    if (row == null) {
      throw StateError('Configuration not found for criterion: $criterionId');
    }

    if (type == 'discrete') {
      final values = row.values != null
          ? (jsonDecode(row.values!) as List).map((e) => e.toString()).toList()
          : <String>[];
      return CriterionConfig.discrete(
        selectionLimit: row.selectionLimit ?? 1,
        values: values,
      );
    } else {
      return CriterionConfig.continuous(
        minValue: row.minValue ?? 0.0,
        maxValue: row.maxValue ?? 10.0,
        stepValue: row.stepValue ?? 1.0,
      );
    }
  }

  /// Converts a database row to a Criterion model.
  Criterion _rowToCriterion(db.CriteriaData row, CriterionConfig config) {
    return Criterion(
      id: row.id,
      icon: row.icon,
      name: row.name,
      type: CriterionType.values.firstWhere(
        (e) => e.name == row.type,
        orElse: () => CriterionType.discrete,
      ),
      config: config,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    );
  }
}


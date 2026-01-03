import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/database/app_database.dart' as db;
import 'package:yudi_time_tracker/core/models/models.dart';
import 'package:yudi_time_tracker/core/repositories/impl/criterion_repository_impl.dart';

void main() {
  late db.AppDatabase database;
  late CriterionRepositoryImpl repository;

  setUp(() async {
    database = db.AppDatabase.test(NativeDatabase.memory());
    repository = CriterionRepositoryImpl(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('CriterionRepository', () {
    test('should create a discrete criterion', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_1',
        icon: 'star',
        name: 'Quality',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 2,
          values: ['Excellent', 'Good', 'Fair'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      final created = await repository.createCriterion(criterion);

      expect(created.id, 'criterion_1');
      expect(created.name, 'Quality');
      expect(created.type, CriterionType.discrete);
      created.config.when(
        discrete: (limit, values) {
          expect(limit, 2);
          expect(values, ['Excellent', 'Good', 'Fair']);
        },
        continuous: (_, __, ___) => fail('Should be discrete'),
      );
    });

    test('should create a continuous criterion', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_2',
        icon: '😊',
        name: 'Happiness',
        type: CriterionType.continuous,
        config: CriterionConfig.continuous(
          minValue: 0.0,
          maxValue: 10.0,
          stepValue: 0.5,
        ),
        createdAt: now,
        updatedAt: now,
      );

      final created = await repository.createCriterion(criterion);

      expect(created.type, CriterionType.continuous);
      created.config.when(
        discrete: (_, __) => fail('Should be continuous'),
        continuous: (min, max, step) {
          expect(min, 0.0);
          expect(max, 10.0);
          expect(step, 0.5);
        },
      );
    });

    test('should update a criterion', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_3',
        icon: 'star',
        name: 'Original',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A', 'B'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion);

      final updated = criterion.copyWith(
        name: 'Updated',
        updatedAt: now.add(Duration(hours: 1)),
      );

      final result = await repository.updateCriterion(updated);

      expect(result.name, 'Updated');

      final retrieved = await repository.getCriterionById('criterion_3');
      expect(retrieved!.name, 'Updated');
    });

    test('should delete a criterion', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_4',
        icon: 'star',
        name: 'To Delete',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion);
      await repository.deleteCriterion('criterion_4');

      final retrieved = await repository.getCriterionById('criterion_4');
      expect(retrieved, isNull);
    });

    test('should get all criteria', () async {
      final now = DateTime.now();
      final criterion1 = Criterion(
        id: 'criterion_5',
        icon: 'star',
        name: 'Criterion 1',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A'],
        ),
        createdAt: now,
        updatedAt: now,
      );
      final criterion2 = Criterion(
        id: 'criterion_6',
        icon: 'home',
        name: 'Criterion 2',
        type: CriterionType.continuous,
        config: CriterionConfig.continuous(
          minValue: 0.0,
          maxValue: 10.0,
          stepValue: 1.0,
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion1);
      await repository.createCriterion(criterion2);

      final allCriteria = await repository.getAllCriteria();
      expect(allCriteria.length, 2);
    });

    test('should get criterion by ID', () async {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_7',
        icon: 'star',
        name: 'Test Criterion',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A', 'B'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion);

      final retrieved = await repository.getCriterionById('criterion_7');
      expect(retrieved, isNotNull);
      expect(retrieved!.name, 'Test Criterion');
    });

    test('should get criteria by IDs', () async {
      final now = DateTime.now();
      final criterion1 = Criterion(
        id: 'criterion_8',
        icon: 'star',
        name: 'Criterion 1',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A'],
        ),
        createdAt: now,
        updatedAt: now,
      );
      final criterion2 = Criterion(
        id: 'criterion_9',
        icon: 'home',
        name: 'Criterion 2',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['B'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion1);
      await repository.createCriterion(criterion2);

      final criteria = await repository.getCriteriaByIds(['criterion_8', 'criterion_9']);
      expect(criteria.length, 2);
    });

    test('should return empty list for empty IDs', () async {
      final criteria = await repository.getCriteriaByIds([]);
      expect(criteria, isEmpty);
    });

    test('should return null for non-existent criterion', () async {
      final criterion = await repository.getCriterionById('non_existent');
      expect(criterion, isNull);
    });

    test('should get criteria by usage frequency', () async {
      // This test requires task-criterion associations
      // For now, we'll test the basic functionality
      final now = DateTime.now();
      final criterion1 = Criterion(
        id: 'criterion_10',
        icon: 'star',
        name: 'Criterion 1',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      await repository.createCriterion(criterion1);

      final criteria = await repository.getCriteriaByUsageFrequency();
      expect(criteria.length, 1);
    });
  });
}


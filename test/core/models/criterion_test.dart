import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/models/models.dart';

void main() {
  group('Criterion', () {
    test('should create a discrete criterion', () {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_1',
        icon: 'star',
        name: 'Quality',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 2,
          values: ['Excellent', 'Good', 'Fair', 'Poor'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      expect(criterion.id, 'criterion_1');
      expect(criterion.icon, 'star');
      expect(criterion.name, 'Quality');
      expect(criterion.type, CriterionType.discrete);
      expect(criterion.config, isA<DiscreteCriterionConfig>());
      criterion.config.when(
        discrete: (limit, values) {
          expect(limit, 2);
          expect(values, ['Excellent', 'Good', 'Fair', 'Poor']);
        },
        continuous: (min, max, step) => fail('Should be discrete'),
      );
    });

    test('should create a continuous criterion', () {
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

      expect(criterion.type, CriterionType.continuous);
      expect(criterion.config, isA<ContinuousCriterionConfig>());
      criterion.config.when(
        discrete: (limit, values) => fail('Should be continuous'),
        continuous: (min, max, step) {
          expect(min, 0.0);
          expect(max, 10.0);
          expect(step, 0.5);
        },
      );
    });

    test('should support copyWith', () {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_3',
        icon: 'work',
        name: 'Original',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 1,
          values: ['A', 'B'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      final updated = criterion.copyWith(name: 'Updated');

      expect(updated.id, criterion.id);
      expect(updated.name, 'Updated');
      expect(updated.config, criterion.config);
    });

    test('should serialize and deserialize to/from JSON', () {
      final now = DateTime.now();
      final criterion = Criterion(
        id: 'criterion_4',
        icon: 'star',
        name: 'Test Criterion',
        type: CriterionType.discrete,
        config: CriterionConfig.discrete(
          selectionLimit: 2,
          values: ['Value1', 'Value2'],
        ),
        createdAt: now,
        updatedAt: now,
      );

      final json = criterion.toJson();
      final deserialized = Criterion.fromJson(json);

      expect(deserialized.id, criterion.id);
      expect(deserialized.icon, criterion.icon);
      expect(deserialized.name, criterion.name);
      expect(deserialized.type, criterion.type);
    });
  });
}


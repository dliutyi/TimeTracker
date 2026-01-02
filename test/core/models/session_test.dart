import 'package:flutter_test/flutter_test.dart';
import 'package:yudi_time_tracker/core/models/models.dart';

void main() {
  group('Session', () {
    test('should create a session with all fields', () {
      final now = DateTime.now();
      final start = now.subtract(Duration(hours: 2));
      final end = now;

      final session = Session(
        id: 'session_1',
        taskId: 'task_1',
        startDateTime: start,
        endDateTime: end,
        ratings: {
          'criterion_1': RatingValue.discrete(values: ['Excellent']),
          'criterion_2': RatingValue.continuous(value: 8.5),
        },
        createdAt: now,
      );

      expect(session.id, 'session_1');
      expect(session.taskId, 'task_1');
      expect(session.startDateTime, start);
      expect(session.endDateTime, end);
      expect(session.ratings.length, 2);
      expect(session.createdAt, now);
    });

    test('should create a session without ratings', () {
      final now = DateTime.now();
      final session = Session(
        id: 'session_2',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      expect(session.ratings, isEmpty);
    });

    test('should support copyWith', () {
      final now = DateTime.now();
      final session = Session(
        id: 'session_3',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        createdAt: now,
      );

      final updated = session.copyWith(
        endDateTime: now.add(Duration(hours: 2)),
      );

      expect(updated.id, session.id);
      expect(updated.startDateTime, session.startDateTime);
      expect(updated.endDateTime, now.add(Duration(hours: 2)));
    });

    test('should serialize and deserialize to/from JSON', () {
      final now = DateTime.now();
      final session = Session(
        id: 'session_4',
        taskId: 'task_1',
        startDateTime: now,
        endDateTime: now.add(Duration(hours: 1)),
        ratings: {
          'criterion_1': RatingValue.discrete(values: ['Good']),
        },
        createdAt: now,
      );

      final json = session.toJson();
      final deserialized = Session.fromJson(json);

      expect(deserialized.id, session.id);
      expect(deserialized.taskId, session.taskId);
      expect(deserialized.startDateTime, session.startDateTime);
      expect(deserialized.endDateTime, session.endDateTime);
    });
  });

  group('RatingValue', () {
    test('should create discrete rating value', () {
      final rating = RatingValue.discrete(values: ['Excellent', 'Good']);

      expect(rating, isA<DiscreteRatingValue>());
      rating.when(
        discrete: (values) {
          expect(values, ['Excellent', 'Good']);
        },
        continuous: (value) => fail('Should be discrete'),
      );
    });

    test('should create continuous rating value', () {
      final rating = RatingValue.continuous(value: 7.5);

      expect(rating, isA<ContinuousRatingValue>());
      rating.when(
        discrete: (values) => fail('Should be continuous'),
        continuous: (value) {
          expect(value, 7.5);
        },
      );
    });

    test('should serialize and deserialize to/from JSON', () {
      final discrete = RatingValue.discrete(values: ['A', 'B']);
      final continuous = RatingValue.continuous(value: 8.0);

      final discreteJson = discrete.toJson();
      final continuousJson = continuous.toJson();

      final deserializedDiscrete = RatingValue.fromJson(discreteJson);
      final deserializedContinuous = RatingValue.fromJson(continuousJson);

      deserializedDiscrete.when(
        discrete: (values) => expect(values, ['A', 'B']),
        continuous: (_) => fail('Should be discrete'),
      );

      deserializedContinuous.when(
        discrete: (_) => fail('Should be continuous'),
        continuous: (value) => expect(value, 8.0),
      );
    });
  });
}


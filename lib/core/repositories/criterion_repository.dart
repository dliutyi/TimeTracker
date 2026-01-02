import '../models/models.dart';

/// Repository interface for criterion operations.
abstract class CriterionRepository {
  /// Creates a new criterion.
  Future<Criterion> createCriterion(Criterion criterion);

  /// Updates an existing criterion.
  Future<Criterion> updateCriterion(Criterion criterion);

  /// Deletes a criterion permanently.
  /// Also removes the criterion from all tasks that reference it (cascade).
  Future<void> deleteCriterion(String criterionId);

  /// Gets all criteria.
  Future<List<Criterion>> getAllCriteria();

  /// Gets a criterion by its ID.
  Future<Criterion?> getCriterionById(String criterionId);

  /// Gets criteria sorted by usage frequency (most used first).
  Future<List<Criterion>> getCriteriaByUsageFrequency();

  /// Gets criteria by their IDs.
  Future<List<Criterion>> getCriteriaByIds(List<String> criterionIds);
}


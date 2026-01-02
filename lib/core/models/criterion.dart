import 'package:freezed_annotation/freezed_annotation.dart';
import 'criterion_config.dart';
import 'criterion_type.dart';

part 'criterion.freezed.dart';
part 'criterion.g.dart';

/// Helper function for JSON serialization of CriterionConfig
Map<String, dynamic> _criterionConfigToJson(CriterionConfig config) =>
    config.toJson();

/// Helper function for JSON deserialization of CriterionConfig
CriterionConfig _criterionConfigFromJson(dynamic json) {
  if (json is Map<String, dynamic>) {
    return CriterionConfig.fromJson(json);
  }
  // If it's already a CriterionConfig (shouldn't happen but handle it)
  return json as CriterionConfig;
}

/// Represents a criterion that can be used to rate tasks.
@Freezed(toJson: true, fromJson: true)
class Criterion with _$Criterion {
  const factory Criterion({
    /// Unique identifier for the criterion
    required String id,

    /// Icon or emoji identifier (String)
    required String icon,

    /// Criterion name
    required String name,

    /// Type of criterion (discrete or continuous)
    required CriterionType type,

    /// Configuration specific to the criterion type
    @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
    required CriterionConfig config,

    /// Timestamp when the criterion was created
    required DateTime createdAt,

    /// Timestamp when the criterion was last updated
    required DateTime updatedAt,
  }) = _Criterion;

  factory Criterion.fromJson(Map<String, dynamic> json) =>
      _$CriterionFromJson(json);
}


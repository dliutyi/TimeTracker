import 'package:freezed_annotation/freezed_annotation.dart';

part 'criterion_config.freezed.dart';
part 'criterion_config.g.dart';

/// Union type representing the configuration of a criterion.
/// Can be either discrete (with predefined values) or continuous (with a range).
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class CriterionConfig with _$CriterionConfig {
  /// Discrete criterion configuration
  const factory CriterionConfig.discrete({
    /// Maximum number of values that can be selected simultaneously
    required int selectionLimit,

    /// List of predefined selectable values
    required List<String> values,
  }) = DiscreteCriterionConfig;

  /// Continuous criterion configuration
  const factory CriterionConfig.continuous({
    /// Minimum allowed value
    required double minValue,

    /// Maximum allowed value
    required double maxValue,

    /// Step size for increment/decrement
    required double stepValue,
  }) = ContinuousCriterionConfig;

  factory CriterionConfig.fromJson(Map<String, dynamic> json) =>
      _$CriterionConfigFromJson(json);
}


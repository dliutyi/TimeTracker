import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_value.freezed.dart';
part 'rating_value.g.dart';

/// Union type representing a rating value.
/// Can be either discrete (list of selected values) or continuous (single numeric value).
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class RatingValue with _$RatingValue {
  /// Discrete rating value (list of selected values)
  const factory RatingValue.discrete({
    /// List of selected values
    required List<String> values,
  }) = DiscreteRatingValue;

  /// Continuous rating value (single numeric value)
  const factory RatingValue.continuous({
    /// Numeric value
    required double value,
  }) = ContinuousRatingValue;

  factory RatingValue.fromJson(Map<String, dynamic> json) =>
      _$RatingValueFromJson(json);
}


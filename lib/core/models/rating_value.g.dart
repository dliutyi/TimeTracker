// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscreteRatingValueImpl _$$DiscreteRatingValueImplFromJson(
  Map<String, dynamic> json,
) => _$DiscreteRatingValueImpl(
  values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$DiscreteRatingValueImplToJson(
  _$DiscreteRatingValueImpl instance,
) => <String, dynamic>{'values': instance.values, 'type': instance.$type};

_$ContinuousRatingValueImpl _$$ContinuousRatingValueImplFromJson(
  Map<String, dynamic> json,
) => _$ContinuousRatingValueImpl(
  value: (json['value'] as num).toDouble(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$ContinuousRatingValueImplToJson(
  _$ContinuousRatingValueImpl instance,
) => <String, dynamic>{'value': instance.value, 'type': instance.$type};

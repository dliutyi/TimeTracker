// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criterion_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscreteCriterionConfigImpl _$$DiscreteCriterionConfigImplFromJson(
  Map<String, dynamic> json,
) => _$DiscreteCriterionConfigImpl(
  selectionLimit: (json['selectionLimit'] as num).toInt(),
  values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$DiscreteCriterionConfigImplToJson(
  _$DiscreteCriterionConfigImpl instance,
) => <String, dynamic>{
  'selectionLimit': instance.selectionLimit,
  'values': instance.values,
  'type': instance.$type,
};

_$ContinuousCriterionConfigImpl _$$ContinuousCriterionConfigImplFromJson(
  Map<String, dynamic> json,
) => _$ContinuousCriterionConfigImpl(
  minValue: (json['minValue'] as num).toDouble(),
  maxValue: (json['maxValue'] as num).toDouble(),
  stepValue: (json['stepValue'] as num).toDouble(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$$ContinuousCriterionConfigImplToJson(
  _$ContinuousCriterionConfigImpl instance,
) => <String, dynamic>{
  'minValue': instance.minValue,
  'maxValue': instance.maxValue,
  'stepValue': instance.stepValue,
  'type': instance.$type,
};

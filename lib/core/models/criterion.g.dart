// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criterion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CriterionImpl _$$CriterionImplFromJson(Map<String, dynamic> json) =>
    _$CriterionImpl(
      id: json['id'] as String,
      icon: json['icon'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$CriterionTypeEnumMap, json['type']),
      config: _criterionConfigFromJson(json['config']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CriterionImplToJson(_$CriterionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'type': _$CriterionTypeEnumMap[instance.type]!,
      'config': _criterionConfigToJson(instance.config),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$CriterionTypeEnumMap = {
  CriterionType.discrete: 'discrete',
  CriterionType.continuous: 'continuous',
};

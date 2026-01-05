// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
  id: json['id'] as String,
  icon: json['icon'] as String,
  name: json['name'] as String,
  motto: json['motto'] as String?,
  color: json['color'] as String? ?? '#f0aa11',
  criterionIds:
      (json['criterionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  disabledAt:
      json['disabledAt'] == null
          ? null
          : DateTime.parse(json['disabledAt'] as String),
);

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'icon': instance.icon,
      'name': instance.name,
      'motto': instance.motto,
      'color': instance.color,
      'criterionIds': instance.criterionIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'disabledAt': instance.disabledAt?.toIso8601String(),
    };

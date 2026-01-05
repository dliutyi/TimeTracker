// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'criterion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Criterion _$CriterionFromJson(Map<String, dynamic> json) {
  return _Criterion.fromJson(json);
}

/// @nodoc
mixin _$Criterion {
  /// Unique identifier for the criterion
  String get id => throw _privateConstructorUsedError;

  /// Icon or emoji identifier (String)
  String get icon => throw _privateConstructorUsedError;

  /// Criterion name
  String get name => throw _privateConstructorUsedError;

  /// Type of criterion (discrete or continuous)
  CriterionType get type => throw _privateConstructorUsedError;

  /// Configuration specific to the criterion type
  @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
  CriterionConfig get config => throw _privateConstructorUsedError;

  /// Timestamp when the criterion was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the criterion was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Criterion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CriterionCopyWith<Criterion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CriterionCopyWith<$Res> {
  factory $CriterionCopyWith(Criterion value, $Res Function(Criterion) then) =
      _$CriterionCopyWithImpl<$Res, Criterion>;
  @useResult
  $Res call({
    String id,
    String icon,
    String name,
    CriterionType type,
    @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
    CriterionConfig config,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $CriterionConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$CriterionCopyWithImpl<$Res, $Val extends Criterion>
    implements $CriterionCopyWith<$Res> {
  _$CriterionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? type = null,
    Object? config = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as CriterionType,
            config:
                null == config
                    ? _value.config
                    : config // ignore: cast_nullable_to_non_nullable
                        as CriterionConfig,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CriterionConfigCopyWith<$Res> get config {
    return $CriterionConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CriterionImplCopyWith<$Res>
    implements $CriterionCopyWith<$Res> {
  factory _$$CriterionImplCopyWith(
    _$CriterionImpl value,
    $Res Function(_$CriterionImpl) then,
  ) = __$$CriterionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String icon,
    String name,
    CriterionType type,
    @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
    CriterionConfig config,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $CriterionConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$CriterionImplCopyWithImpl<$Res>
    extends _$CriterionCopyWithImpl<$Res, _$CriterionImpl>
    implements _$$CriterionImplCopyWith<$Res> {
  __$$CriterionImplCopyWithImpl(
    _$CriterionImpl _value,
    $Res Function(_$CriterionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? type = null,
    Object? config = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$CriterionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as CriterionType,
        config:
            null == config
                ? _value.config
                : config // ignore: cast_nullable_to_non_nullable
                    as CriterionConfig,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CriterionImpl implements _Criterion {
  const _$CriterionImpl({
    required this.id,
    required this.icon,
    required this.name,
    required this.type,
    @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
    required this.config,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$CriterionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CriterionImplFromJson(json);

  /// Unique identifier for the criterion
  @override
  final String id;

  /// Icon or emoji identifier (String)
  @override
  final String icon;

  /// Criterion name
  @override
  final String name;

  /// Type of criterion (discrete or continuous)
  @override
  final CriterionType type;

  /// Configuration specific to the criterion type
  @override
  @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
  final CriterionConfig config;

  /// Timestamp when the criterion was created
  @override
  final DateTime createdAt;

  /// Timestamp when the criterion was last updated
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Criterion(id: $id, icon: $icon, name: $name, type: $type, config: $config, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CriterionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    icon,
    name,
    type,
    config,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CriterionImplCopyWith<_$CriterionImpl> get copyWith =>
      __$$CriterionImplCopyWithImpl<_$CriterionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CriterionImplToJson(this);
  }
}

abstract class _Criterion implements Criterion {
  const factory _Criterion({
    required final String id,
    required final String icon,
    required final String name,
    required final CriterionType type,
    @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
    required final CriterionConfig config,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$CriterionImpl;

  factory _Criterion.fromJson(Map<String, dynamic> json) =
      _$CriterionImpl.fromJson;

  /// Unique identifier for the criterion
  @override
  String get id;

  /// Icon or emoji identifier (String)
  @override
  String get icon;

  /// Criterion name
  @override
  String get name;

  /// Type of criterion (discrete or continuous)
  @override
  CriterionType get type;

  /// Configuration specific to the criterion type
  @override
  @JsonKey(toJson: _criterionConfigToJson, fromJson: _criterionConfigFromJson)
  CriterionConfig get config;

  /// Timestamp when the criterion was created
  @override
  DateTime get createdAt;

  /// Timestamp when the criterion was last updated
  @override
  DateTime get updatedAt;

  /// Create a copy of Criterion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CriterionImplCopyWith<_$CriterionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  /// Unique identifier for the task
  String get id => throw _privateConstructorUsedError;

  /// Icon identifier (String representation of icon)
  String get icon => throw _privateConstructorUsedError;

  /// Task name (max 32 characters)
  String get name => throw _privateConstructorUsedError;

  /// Optional motivational phrase or description (max 128 characters)
  String? get motto => throw _privateConstructorUsedError;

  /// Task color (hex color string, e.g., "#f0aa11")
  String get color => throw _privateConstructorUsedError;

  /// List of criterion IDs associated with this task
  List<String> get criterionIds => throw _privateConstructorUsedError;

  /// Timestamp when the task was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Timestamp when the task was last updated
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Timestamp when the task was disabled (null if active)
  DateTime? get disabledAt => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({
    String id,
    String icon,
    String name,
    String? motto,
    String color,
    List<String> criterionIds,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime? disabledAt,
  });
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? motto = freezed,
    Object? color = null,
    Object? criterionIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? disabledAt = freezed,
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
            motto:
                freezed == motto
                    ? _value.motto
                    : motto // ignore: cast_nullable_to_non_nullable
                        as String?,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as String,
            criterionIds:
                null == criterionIds
                    ? _value.criterionIds
                    : criterionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
            disabledAt:
                freezed == disabledAt
                    ? _value.disabledAt
                    : disabledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
    _$TaskImpl value,
    $Res Function(_$TaskImpl) then,
  ) = __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String icon,
    String name,
    String? motto,
    String color,
    List<String> criterionIds,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime? disabledAt,
  });
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
    : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
    Object? motto = freezed,
    Object? color = null,
    Object? criterionIds = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? disabledAt = freezed,
  }) {
    return _then(
      _$TaskImpl(
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
        motto:
            freezed == motto
                ? _value.motto
                : motto // ignore: cast_nullable_to_non_nullable
                    as String?,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as String,
        criterionIds:
            null == criterionIds
                ? _value._criterionIds
                : criterionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
        disabledAt:
            freezed == disabledAt
                ? _value.disabledAt
                : disabledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl({
    required this.id,
    required this.icon,
    required this.name,
    this.motto,
    this.color = '#f0aa11',
    final List<String> criterionIds = const [],
    required this.createdAt,
    required this.updatedAt,
    this.disabledAt,
  }) : _criterionIds = criterionIds;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  /// Unique identifier for the task
  @override
  final String id;

  /// Icon identifier (String representation of icon)
  @override
  final String icon;

  /// Task name (max 32 characters)
  @override
  final String name;

  /// Optional motivational phrase or description (max 128 characters)
  @override
  final String? motto;

  /// Task color (hex color string, e.g., "#f0aa11")
  @override
  @JsonKey()
  final String color;

  /// List of criterion IDs associated with this task
  final List<String> _criterionIds;

  /// List of criterion IDs associated with this task
  @override
  @JsonKey()
  List<String> get criterionIds {
    if (_criterionIds is EqualUnmodifiableListView) return _criterionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_criterionIds);
  }

  /// Timestamp when the task was created
  @override
  final DateTime createdAt;

  /// Timestamp when the task was last updated
  @override
  final DateTime updatedAt;

  /// Timestamp when the task was disabled (null if active)
  @override
  final DateTime? disabledAt;

  @override
  String toString() {
    return 'Task(id: $id, icon: $icon, name: $name, motto: $motto, color: $color, criterionIds: $criterionIds, createdAt: $createdAt, updatedAt: $updatedAt, disabledAt: $disabledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.motto, motto) || other.motto == motto) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(
              other._criterionIds,
              _criterionIds,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.disabledAt, disabledAt) ||
                other.disabledAt == disabledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    icon,
    name,
    motto,
    color,
    const DeepCollectionEquality().hash(_criterionIds),
    createdAt,
    updatedAt,
    disabledAt,
  );

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task({
    required final String id,
    required final String icon,
    required final String name,
    final String? motto,
    final String color,
    final List<String> criterionIds,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final DateTime? disabledAt,
  }) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  /// Unique identifier for the task
  @override
  String get id;

  /// Icon identifier (String representation of icon)
  @override
  String get icon;

  /// Task name (max 32 characters)
  @override
  String get name;

  /// Optional motivational phrase or description (max 128 characters)
  @override
  String? get motto;

  /// Task color (hex color string, e.g., "#f0aa11")
  @override
  String get color;

  /// List of criterion IDs associated with this task
  @override
  List<String> get criterionIds;

  /// Timestamp when the task was created
  @override
  DateTime get createdAt;

  /// Timestamp when the task was last updated
  @override
  DateTime get updatedAt;

  /// Timestamp when the task was disabled (null if active)
  @override
  DateTime? get disabledAt;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

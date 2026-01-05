// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  /// Unique identifier for the session
  String get id => throw _privateConstructorUsedError;

  /// ID of the task this session belongs to
  String get taskId => throw _privateConstructorUsedError;

  /// Start datetime of the session
  DateTime get startDateTime => throw _privateConstructorUsedError;

  /// End datetime of the session
  DateTime get endDateTime => throw _privateConstructorUsedError;

  /// Map of criterion ID to rating value
  @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
  Map<String, RatingValue> get ratings => throw _privateConstructorUsedError;

  /// Timestamp when the session was created
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({
    String id,
    String taskId,
    DateTime startDateTime,
    DateTime endDateTime,
    @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
    Map<String, RatingValue> ratings,
    DateTime createdAt,
  });
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? ratings = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            taskId:
                null == taskId
                    ? _value.taskId
                    : taskId // ignore: cast_nullable_to_non_nullable
                        as String,
            startDateTime:
                null == startDateTime
                    ? _value.startDateTime
                    : startDateTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endDateTime:
                null == endDateTime
                    ? _value.endDateTime
                    : endDateTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            ratings:
                null == ratings
                    ? _value.ratings
                    : ratings // ignore: cast_nullable_to_non_nullable
                        as Map<String, RatingValue>,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
    _$SessionImpl value,
    $Res Function(_$SessionImpl) then,
  ) = __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String taskId,
    DateTime startDateTime,
    DateTime endDateTime,
    @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
    Map<String, RatingValue> ratings,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
    _$SessionImpl _value,
    $Res Function(_$SessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? ratings = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$SessionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        taskId:
            null == taskId
                ? _value.taskId
                : taskId // ignore: cast_nullable_to_non_nullable
                    as String,
        startDateTime:
            null == startDateTime
                ? _value.startDateTime
                : startDateTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endDateTime:
            null == endDateTime
                ? _value.endDateTime
                : endDateTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        ratings:
            null == ratings
                ? _value._ratings
                : ratings // ignore: cast_nullable_to_non_nullable
                    as Map<String, RatingValue>,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl({
    required this.id,
    required this.taskId,
    required this.startDateTime,
    required this.endDateTime,
    @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
    final Map<String, RatingValue> ratings = const {},
    required this.createdAt,
  }) : _ratings = ratings;

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  /// Unique identifier for the session
  @override
  final String id;

  /// ID of the task this session belongs to
  @override
  final String taskId;

  /// Start datetime of the session
  @override
  final DateTime startDateTime;

  /// End datetime of the session
  @override
  final DateTime endDateTime;

  /// Map of criterion ID to rating value
  final Map<String, RatingValue> _ratings;

  /// Map of criterion ID to rating value
  @override
  @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
  Map<String, RatingValue> get ratings {
    if (_ratings is EqualUnmodifiableMapView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ratings);
  }

  /// Timestamp when the session was created
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Session(id: $id, taskId: $taskId, startDateTime: $startDateTime, endDateTime: $endDateTime, ratings: $ratings, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    taskId,
    startDateTime,
    endDateTime,
    const DeepCollectionEquality().hash(_ratings),
    createdAt,
  );

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(this);
  }
}

abstract class _Session implements Session {
  const factory _Session({
    required final String id,
    required final String taskId,
    required final DateTime startDateTime,
    required final DateTime endDateTime,
    @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
    final Map<String, RatingValue> ratings,
    required final DateTime createdAt,
  }) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  /// Unique identifier for the session
  @override
  String get id;

  /// ID of the task this session belongs to
  @override
  String get taskId;

  /// Start datetime of the session
  @override
  DateTime get startDateTime;

  /// End datetime of the session
  @override
  DateTime get endDateTime;

  /// Map of criterion ID to rating value
  @override
  @JsonKey(toJson: _ratingsToJson, fromJson: _ratingsFromJson)
  Map<String, RatingValue> get ratings;

  /// Timestamp when the session was created
  @override
  DateTime get createdAt;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

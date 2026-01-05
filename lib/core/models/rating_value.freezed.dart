// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RatingValue _$RatingValueFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'Discrete':
      return DiscreteRatingValue.fromJson(json);
    case 'Continuous':
      return ContinuousRatingValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'RatingValue',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$RatingValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> values) discrete,
    required TResult Function(double value) continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> values)? discrete,
    TResult? Function(double value)? continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> values)? discrete,
    TResult Function(double value)? continuous,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteRatingValue value) discrete,
    required TResult Function(ContinuousRatingValue value) continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteRatingValue value)? discrete,
    TResult? Function(ContinuousRatingValue value)? continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteRatingValue value)? discrete,
    TResult Function(ContinuousRatingValue value)? continuous,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this RatingValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingValueCopyWith<$Res> {
  factory $RatingValueCopyWith(
    RatingValue value,
    $Res Function(RatingValue) then,
  ) = _$RatingValueCopyWithImpl<$Res, RatingValue>;
}

/// @nodoc
class _$RatingValueCopyWithImpl<$Res, $Val extends RatingValue>
    implements $RatingValueCopyWith<$Res> {
  _$RatingValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DiscreteRatingValueImplCopyWith<$Res> {
  factory _$$DiscreteRatingValueImplCopyWith(
    _$DiscreteRatingValueImpl value,
    $Res Function(_$DiscreteRatingValueImpl) then,
  ) = __$$DiscreteRatingValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> values});
}

/// @nodoc
class __$$DiscreteRatingValueImplCopyWithImpl<$Res>
    extends _$RatingValueCopyWithImpl<$Res, _$DiscreteRatingValueImpl>
    implements _$$DiscreteRatingValueImplCopyWith<$Res> {
  __$$DiscreteRatingValueImplCopyWithImpl(
    _$DiscreteRatingValueImpl _value,
    $Res Function(_$DiscreteRatingValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? values = null}) {
    return _then(
      _$DiscreteRatingValueImpl(
        values:
            null == values
                ? _value._values
                : values // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscreteRatingValueImpl implements DiscreteRatingValue {
  const _$DiscreteRatingValueImpl({
    required final List<String> values,
    final String? $type,
  }) : _values = values,
       $type = $type ?? 'Discrete';

  factory _$DiscreteRatingValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscreteRatingValueImplFromJson(json);

  /// List of selected values
  final List<String> _values;

  /// List of selected values
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RatingValue.discrete(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscreteRatingValueImpl &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscreteRatingValueImplCopyWith<_$DiscreteRatingValueImpl> get copyWith =>
      __$$DiscreteRatingValueImplCopyWithImpl<_$DiscreteRatingValueImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> values) discrete,
    required TResult Function(double value) continuous,
  }) {
    return discrete(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> values)? discrete,
    TResult? Function(double value)? continuous,
  }) {
    return discrete?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> values)? discrete,
    TResult Function(double value)? continuous,
    required TResult orElse(),
  }) {
    if (discrete != null) {
      return discrete(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteRatingValue value) discrete,
    required TResult Function(ContinuousRatingValue value) continuous,
  }) {
    return discrete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteRatingValue value)? discrete,
    TResult? Function(ContinuousRatingValue value)? continuous,
  }) {
    return discrete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteRatingValue value)? discrete,
    TResult Function(ContinuousRatingValue value)? continuous,
    required TResult orElse(),
  }) {
    if (discrete != null) {
      return discrete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscreteRatingValueImplToJson(this);
  }
}

abstract class DiscreteRatingValue implements RatingValue {
  const factory DiscreteRatingValue({required final List<String> values}) =
      _$DiscreteRatingValueImpl;

  factory DiscreteRatingValue.fromJson(Map<String, dynamic> json) =
      _$DiscreteRatingValueImpl.fromJson;

  /// List of selected values
  List<String> get values;

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscreteRatingValueImplCopyWith<_$DiscreteRatingValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContinuousRatingValueImplCopyWith<$Res> {
  factory _$$ContinuousRatingValueImplCopyWith(
    _$ContinuousRatingValueImpl value,
    $Res Function(_$ContinuousRatingValueImpl) then,
  ) = __$$ContinuousRatingValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$ContinuousRatingValueImplCopyWithImpl<$Res>
    extends _$RatingValueCopyWithImpl<$Res, _$ContinuousRatingValueImpl>
    implements _$$ContinuousRatingValueImplCopyWith<$Res> {
  __$$ContinuousRatingValueImplCopyWithImpl(
    _$ContinuousRatingValueImpl _value,
    $Res Function(_$ContinuousRatingValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$ContinuousRatingValueImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinuousRatingValueImpl implements ContinuousRatingValue {
  const _$ContinuousRatingValueImpl({required this.value, final String? $type})
    : $type = $type ?? 'Continuous';

  factory _$ContinuousRatingValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinuousRatingValueImplFromJson(json);

  /// Numeric value
  @override
  final double value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RatingValue.continuous(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinuousRatingValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinuousRatingValueImplCopyWith<_$ContinuousRatingValueImpl>
  get copyWith =>
      __$$ContinuousRatingValueImplCopyWithImpl<_$ContinuousRatingValueImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> values) discrete,
    required TResult Function(double value) continuous,
  }) {
    return continuous(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> values)? discrete,
    TResult? Function(double value)? continuous,
  }) {
    return continuous?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> values)? discrete,
    TResult Function(double value)? continuous,
    required TResult orElse(),
  }) {
    if (continuous != null) {
      return continuous(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteRatingValue value) discrete,
    required TResult Function(ContinuousRatingValue value) continuous,
  }) {
    return continuous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteRatingValue value)? discrete,
    TResult? Function(ContinuousRatingValue value)? continuous,
  }) {
    return continuous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteRatingValue value)? discrete,
    TResult Function(ContinuousRatingValue value)? continuous,
    required TResult orElse(),
  }) {
    if (continuous != null) {
      return continuous(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinuousRatingValueImplToJson(this);
  }
}

abstract class ContinuousRatingValue implements RatingValue {
  const factory ContinuousRatingValue({required final double value}) =
      _$ContinuousRatingValueImpl;

  factory ContinuousRatingValue.fromJson(Map<String, dynamic> json) =
      _$ContinuousRatingValueImpl.fromJson;

  /// Numeric value
  double get value;

  /// Create a copy of RatingValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinuousRatingValueImplCopyWith<_$ContinuousRatingValueImpl>
  get copyWith => throw _privateConstructorUsedError;
}

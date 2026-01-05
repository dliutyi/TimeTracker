// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'criterion_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CriterionConfig _$CriterionConfigFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'Discrete':
      return DiscreteCriterionConfig.fromJson(json);
    case 'Continuous':
      return ContinuousCriterionConfig.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'type',
        'CriterionConfig',
        'Invalid union type "${json['type']}"!',
      );
  }
}

/// @nodoc
mixin _$CriterionConfig {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectionLimit, List<String> values) discrete,
    required TResult Function(
      double minValue,
      double maxValue,
      double stepValue,
    )
    continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectionLimit, List<String> values)? discrete,
    TResult? Function(double minValue, double maxValue, double stepValue)?
    continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectionLimit, List<String> values)? discrete,
    TResult Function(double minValue, double maxValue, double stepValue)?
    continuous,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteCriterionConfig value) discrete,
    required TResult Function(ContinuousCriterionConfig value) continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteCriterionConfig value)? discrete,
    TResult? Function(ContinuousCriterionConfig value)? continuous,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteCriterionConfig value)? discrete,
    TResult Function(ContinuousCriterionConfig value)? continuous,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this CriterionConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CriterionConfigCopyWith<$Res> {
  factory $CriterionConfigCopyWith(
    CriterionConfig value,
    $Res Function(CriterionConfig) then,
  ) = _$CriterionConfigCopyWithImpl<$Res, CriterionConfig>;
}

/// @nodoc
class _$CriterionConfigCopyWithImpl<$Res, $Val extends CriterionConfig>
    implements $CriterionConfigCopyWith<$Res> {
  _$CriterionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DiscreteCriterionConfigImplCopyWith<$Res> {
  factory _$$DiscreteCriterionConfigImplCopyWith(
    _$DiscreteCriterionConfigImpl value,
    $Res Function(_$DiscreteCriterionConfigImpl) then,
  ) = __$$DiscreteCriterionConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectionLimit, List<String> values});
}

/// @nodoc
class __$$DiscreteCriterionConfigImplCopyWithImpl<$Res>
    extends _$CriterionConfigCopyWithImpl<$Res, _$DiscreteCriterionConfigImpl>
    implements _$$DiscreteCriterionConfigImplCopyWith<$Res> {
  __$$DiscreteCriterionConfigImplCopyWithImpl(
    _$DiscreteCriterionConfigImpl _value,
    $Res Function(_$DiscreteCriterionConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectionLimit = null, Object? values = null}) {
    return _then(
      _$DiscreteCriterionConfigImpl(
        selectionLimit:
            null == selectionLimit
                ? _value.selectionLimit
                : selectionLimit // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$DiscreteCriterionConfigImpl implements DiscreteCriterionConfig {
  const _$DiscreteCriterionConfigImpl({
    required this.selectionLimit,
    required final List<String> values,
    final String? $type,
  }) : _values = values,
       $type = $type ?? 'Discrete';

  factory _$DiscreteCriterionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscreteCriterionConfigImplFromJson(json);

  /// Maximum number of values that can be selected simultaneously
  @override
  final int selectionLimit;

  /// List of predefined selectable values
  final List<String> _values;

  /// List of predefined selectable values
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
    return 'CriterionConfig.discrete(selectionLimit: $selectionLimit, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscreteCriterionConfigImpl &&
            (identical(other.selectionLimit, selectionLimit) ||
                other.selectionLimit == selectionLimit) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectionLimit,
    const DeepCollectionEquality().hash(_values),
  );

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscreteCriterionConfigImplCopyWith<_$DiscreteCriterionConfigImpl>
  get copyWith => __$$DiscreteCriterionConfigImplCopyWithImpl<
    _$DiscreteCriterionConfigImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectionLimit, List<String> values) discrete,
    required TResult Function(
      double minValue,
      double maxValue,
      double stepValue,
    )
    continuous,
  }) {
    return discrete(selectionLimit, values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectionLimit, List<String> values)? discrete,
    TResult? Function(double minValue, double maxValue, double stepValue)?
    continuous,
  }) {
    return discrete?.call(selectionLimit, values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectionLimit, List<String> values)? discrete,
    TResult Function(double minValue, double maxValue, double stepValue)?
    continuous,
    required TResult orElse(),
  }) {
    if (discrete != null) {
      return discrete(selectionLimit, values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteCriterionConfig value) discrete,
    required TResult Function(ContinuousCriterionConfig value) continuous,
  }) {
    return discrete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteCriterionConfig value)? discrete,
    TResult? Function(ContinuousCriterionConfig value)? continuous,
  }) {
    return discrete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteCriterionConfig value)? discrete,
    TResult Function(ContinuousCriterionConfig value)? continuous,
    required TResult orElse(),
  }) {
    if (discrete != null) {
      return discrete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscreteCriterionConfigImplToJson(this);
  }
}

abstract class DiscreteCriterionConfig implements CriterionConfig {
  const factory DiscreteCriterionConfig({
    required final int selectionLimit,
    required final List<String> values,
  }) = _$DiscreteCriterionConfigImpl;

  factory DiscreteCriterionConfig.fromJson(Map<String, dynamic> json) =
      _$DiscreteCriterionConfigImpl.fromJson;

  /// Maximum number of values that can be selected simultaneously
  int get selectionLimit;

  /// List of predefined selectable values
  List<String> get values;

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscreteCriterionConfigImplCopyWith<_$DiscreteCriterionConfigImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContinuousCriterionConfigImplCopyWith<$Res> {
  factory _$$ContinuousCriterionConfigImplCopyWith(
    _$ContinuousCriterionConfigImpl value,
    $Res Function(_$ContinuousCriterionConfigImpl) then,
  ) = __$$ContinuousCriterionConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double minValue, double maxValue, double stepValue});
}

/// @nodoc
class __$$ContinuousCriterionConfigImplCopyWithImpl<$Res>
    extends _$CriterionConfigCopyWithImpl<$Res, _$ContinuousCriterionConfigImpl>
    implements _$$ContinuousCriterionConfigImplCopyWith<$Res> {
  __$$ContinuousCriterionConfigImplCopyWithImpl(
    _$ContinuousCriterionConfigImpl _value,
    $Res Function(_$ContinuousCriterionConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minValue = null,
    Object? maxValue = null,
    Object? stepValue = null,
  }) {
    return _then(
      _$ContinuousCriterionConfigImpl(
        minValue:
            null == minValue
                ? _value.minValue
                : minValue // ignore: cast_nullable_to_non_nullable
                    as double,
        maxValue:
            null == maxValue
                ? _value.maxValue
                : maxValue // ignore: cast_nullable_to_non_nullable
                    as double,
        stepValue:
            null == stepValue
                ? _value.stepValue
                : stepValue // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinuousCriterionConfigImpl implements ContinuousCriterionConfig {
  const _$ContinuousCriterionConfigImpl({
    required this.minValue,
    required this.maxValue,
    required this.stepValue,
    final String? $type,
  }) : $type = $type ?? 'Continuous';

  factory _$ContinuousCriterionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinuousCriterionConfigImplFromJson(json);

  /// Minimum allowed value
  @override
  final double minValue;

  /// Maximum allowed value
  @override
  final double maxValue;

  /// Step size for increment/decrement
  @override
  final double stepValue;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CriterionConfig.continuous(minValue: $minValue, maxValue: $maxValue, stepValue: $stepValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinuousCriterionConfigImpl &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.stepValue, stepValue) ||
                other.stepValue == stepValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minValue, maxValue, stepValue);

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinuousCriterionConfigImplCopyWith<_$ContinuousCriterionConfigImpl>
  get copyWith => __$$ContinuousCriterionConfigImplCopyWithImpl<
    _$ContinuousCriterionConfigImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectionLimit, List<String> values) discrete,
    required TResult Function(
      double minValue,
      double maxValue,
      double stepValue,
    )
    continuous,
  }) {
    return continuous(minValue, maxValue, stepValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectionLimit, List<String> values)? discrete,
    TResult? Function(double minValue, double maxValue, double stepValue)?
    continuous,
  }) {
    return continuous?.call(minValue, maxValue, stepValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectionLimit, List<String> values)? discrete,
    TResult Function(double minValue, double maxValue, double stepValue)?
    continuous,
    required TResult orElse(),
  }) {
    if (continuous != null) {
      return continuous(minValue, maxValue, stepValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiscreteCriterionConfig value) discrete,
    required TResult Function(ContinuousCriterionConfig value) continuous,
  }) {
    return continuous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscreteCriterionConfig value)? discrete,
    TResult? Function(ContinuousCriterionConfig value)? continuous,
  }) {
    return continuous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscreteCriterionConfig value)? discrete,
    TResult Function(ContinuousCriterionConfig value)? continuous,
    required TResult orElse(),
  }) {
    if (continuous != null) {
      return continuous(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinuousCriterionConfigImplToJson(this);
  }
}

abstract class ContinuousCriterionConfig implements CriterionConfig {
  const factory ContinuousCriterionConfig({
    required final double minValue,
    required final double maxValue,
    required final double stepValue,
  }) = _$ContinuousCriterionConfigImpl;

  factory ContinuousCriterionConfig.fromJson(Map<String, dynamic> json) =
      _$ContinuousCriterionConfigImpl.fromJson;

  /// Minimum allowed value
  double get minValue;

  /// Maximum allowed value
  double get maxValue;

  /// Step size for increment/decrement
  double get stepValue;

  /// Create a copy of CriterionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinuousCriterionConfigImplCopyWith<_$ContinuousCriterionConfigImpl>
  get copyWith => throw _privateConstructorUsedError;
}

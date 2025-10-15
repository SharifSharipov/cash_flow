// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_monthly_analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetMonthlyAnalyticsParams {
  DateTime get month => throw _privateConstructorUsedError;

  /// Create a copy of GetMonthlyAnalyticsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMonthlyAnalyticsParamsCopyWith<GetMonthlyAnalyticsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMonthlyAnalyticsParamsCopyWith<$Res> {
  factory $GetMonthlyAnalyticsParamsCopyWith(
    GetMonthlyAnalyticsParams value,
    $Res Function(GetMonthlyAnalyticsParams) then,
  ) = _$GetMonthlyAnalyticsParamsCopyWithImpl<$Res, GetMonthlyAnalyticsParams>;
  @useResult
  $Res call({DateTime month});
}

/// @nodoc
class _$GetMonthlyAnalyticsParamsCopyWithImpl<
  $Res,
  $Val extends GetMonthlyAnalyticsParams
>
    implements $GetMonthlyAnalyticsParamsCopyWith<$Res> {
  _$GetMonthlyAnalyticsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMonthlyAnalyticsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null}) {
    return _then(
      _value.copyWith(
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetMonthlyAnalyticsParamsImplCopyWith<$Res>
    implements $GetMonthlyAnalyticsParamsCopyWith<$Res> {
  factory _$$GetMonthlyAnalyticsParamsImplCopyWith(
    _$GetMonthlyAnalyticsParamsImpl value,
    $Res Function(_$GetMonthlyAnalyticsParamsImpl) then,
  ) = __$$GetMonthlyAnalyticsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime month});
}

/// @nodoc
class __$$GetMonthlyAnalyticsParamsImplCopyWithImpl<$Res>
    extends
        _$GetMonthlyAnalyticsParamsCopyWithImpl<
          $Res,
          _$GetMonthlyAnalyticsParamsImpl
        >
    implements _$$GetMonthlyAnalyticsParamsImplCopyWith<$Res> {
  __$$GetMonthlyAnalyticsParamsImplCopyWithImpl(
    _$GetMonthlyAnalyticsParamsImpl _value,
    $Res Function(_$GetMonthlyAnalyticsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetMonthlyAnalyticsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null}) {
    return _then(
      _$GetMonthlyAnalyticsParamsImpl(
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$GetMonthlyAnalyticsParamsImpl implements _GetMonthlyAnalyticsParams {
  const _$GetMonthlyAnalyticsParamsImpl({required this.month});

  @override
  final DateTime month;

  @override
  String toString() {
    return 'GetMonthlyAnalyticsParams(month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMonthlyAnalyticsParamsImpl &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  /// Create a copy of GetMonthlyAnalyticsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMonthlyAnalyticsParamsImplCopyWith<_$GetMonthlyAnalyticsParamsImpl>
  get copyWith =>
      __$$GetMonthlyAnalyticsParamsImplCopyWithImpl<
        _$GetMonthlyAnalyticsParamsImpl
      >(this, _$identity);
}

abstract class _GetMonthlyAnalyticsParams implements GetMonthlyAnalyticsParams {
  const factory _GetMonthlyAnalyticsParams({required final DateTime month}) =
      _$GetMonthlyAnalyticsParamsImpl;

  @override
  DateTime get month;

  /// Create a copy of GetMonthlyAnalyticsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMonthlyAnalyticsParamsImplCopyWith<_$GetMonthlyAnalyticsParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

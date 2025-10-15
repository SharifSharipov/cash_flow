// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddTransactionParams {
  TransactionEntity get model => throw _privateConstructorUsedError;

  /// Create a copy of AddTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTransactionParamsCopyWith<AddTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionParamsCopyWith<$Res> {
  factory $AddTransactionParamsCopyWith(
    AddTransactionParams value,
    $Res Function(AddTransactionParams) then,
  ) = _$AddTransactionParamsCopyWithImpl<$Res, AddTransactionParams>;
  @useResult
  $Res call({TransactionEntity model});
}

/// @nodoc
class _$AddTransactionParamsCopyWithImpl<
  $Res,
  $Val extends AddTransactionParams
>
    implements $AddTransactionParamsCopyWith<$Res> {
  _$AddTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null}) {
    return _then(
      _value.copyWith(
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as TransactionEntity,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddTransactionParamsImplCopyWith<$Res>
    implements $AddTransactionParamsCopyWith<$Res> {
  factory _$$AddTransactionParamsImplCopyWith(
    _$AddTransactionParamsImpl value,
    $Res Function(_$AddTransactionParamsImpl) then,
  ) = __$$AddTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionEntity model});
}

/// @nodoc
class __$$AddTransactionParamsImplCopyWithImpl<$Res>
    extends _$AddTransactionParamsCopyWithImpl<$Res, _$AddTransactionParamsImpl>
    implements _$$AddTransactionParamsImplCopyWith<$Res> {
  __$$AddTransactionParamsImplCopyWithImpl(
    _$AddTransactionParamsImpl _value,
    $Res Function(_$AddTransactionParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null}) {
    return _then(
      _$AddTransactionParamsImpl(
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as TransactionEntity,
      ),
    );
  }
}

/// @nodoc

class _$AddTransactionParamsImpl implements _AddTransactionParams {
  const _$AddTransactionParamsImpl({required this.model});

  @override
  final TransactionEntity model;

  @override
  String toString() {
    return 'AddTransactionParams(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionParamsImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of AddTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionParamsImplCopyWith<_$AddTransactionParamsImpl>
  get copyWith =>
      __$$AddTransactionParamsImplCopyWithImpl<_$AddTransactionParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _AddTransactionParams implements AddTransactionParams {
  const factory _AddTransactionParams({
    required final TransactionEntity model,
  }) = _$AddTransactionParamsImpl;

  @override
  TransactionEntity get model;

  /// Create a copy of AddTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTransactionParamsImplCopyWith<_$AddTransactionParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

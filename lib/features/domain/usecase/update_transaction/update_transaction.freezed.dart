// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateTransactionParams {
  int get id => throw _privateConstructorUsedError;
  TransactionEntity get model => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTransactionParamsCopyWith<UpdateTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTransactionParamsCopyWith<$Res> {
  factory $UpdateTransactionParamsCopyWith(
    UpdateTransactionParams value,
    $Res Function(UpdateTransactionParams) then,
  ) = _$UpdateTransactionParamsCopyWithImpl<$Res, UpdateTransactionParams>;
  @useResult
  $Res call({int id, TransactionEntity model});
}

/// @nodoc
class _$UpdateTransactionParamsCopyWithImpl<
  $Res,
  $Val extends UpdateTransactionParams
>
    implements $UpdateTransactionParamsCopyWith<$Res> {
  _$UpdateTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? model = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$UpdateTransactionParamsImplCopyWith<$Res>
    implements $UpdateTransactionParamsCopyWith<$Res> {
  factory _$$UpdateTransactionParamsImplCopyWith(
    _$UpdateTransactionParamsImpl value,
    $Res Function(_$UpdateTransactionParamsImpl) then,
  ) = __$$UpdateTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, TransactionEntity model});
}

/// @nodoc
class __$$UpdateTransactionParamsImplCopyWithImpl<$Res>
    extends
        _$UpdateTransactionParamsCopyWithImpl<
          $Res,
          _$UpdateTransactionParamsImpl
        >
    implements _$$UpdateTransactionParamsImplCopyWith<$Res> {
  __$$UpdateTransactionParamsImplCopyWithImpl(
    _$UpdateTransactionParamsImpl _value,
    $Res Function(_$UpdateTransactionParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? model = null}) {
    return _then(
      _$UpdateTransactionParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        model: null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as TransactionEntity,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTransactionParamsImpl implements _UpdateTransactionParams {
  const _$UpdateTransactionParamsImpl({required this.id, required this.model});

  @override
  final int id;
  @override
  final TransactionEntity model;

  @override
  String toString() {
    return 'UpdateTransactionParams(id: $id, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, model);

  /// Create a copy of UpdateTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionParamsImplCopyWith<_$UpdateTransactionParamsImpl>
  get copyWith =>
      __$$UpdateTransactionParamsImplCopyWithImpl<
        _$UpdateTransactionParamsImpl
      >(this, _$identity);
}

abstract class _UpdateTransactionParams implements UpdateTransactionParams {
  const factory _UpdateTransactionParams({
    required final int id,
    required final TransactionEntity model,
  }) = _$UpdateTransactionParamsImpl;

  @override
  int get id;
  @override
  TransactionEntity get model;

  /// Create a copy of UpdateTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionParamsImplCopyWith<_$UpdateTransactionParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

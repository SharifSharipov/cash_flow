// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteTransactionParams {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTransactionParamsCopyWith<DeleteTransactionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTransactionParamsCopyWith<$Res> {
  factory $DeleteTransactionParamsCopyWith(
    DeleteTransactionParams value,
    $Res Function(DeleteTransactionParams) then,
  ) = _$DeleteTransactionParamsCopyWithImpl<$Res, DeleteTransactionParams>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteTransactionParamsCopyWithImpl<
  $Res,
  $Val extends DeleteTransactionParams
>
    implements $DeleteTransactionParamsCopyWith<$Res> {
  _$DeleteTransactionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteTransactionParamsImplCopyWith<$Res>
    implements $DeleteTransactionParamsCopyWith<$Res> {
  factory _$$DeleteTransactionParamsImplCopyWith(
    _$DeleteTransactionParamsImpl value,
    $Res Function(_$DeleteTransactionParamsImpl) then,
  ) = __$$DeleteTransactionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTransactionParamsImplCopyWithImpl<$Res>
    extends
        _$DeleteTransactionParamsCopyWithImpl<
          $Res,
          _$DeleteTransactionParamsImpl
        >
    implements _$$DeleteTransactionParamsImplCopyWith<$Res> {
  __$$DeleteTransactionParamsImplCopyWithImpl(
    _$DeleteTransactionParamsImpl _value,
    $Res Function(_$DeleteTransactionParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteTransactionParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteTransactionParamsImpl implements _DeleteTransactionParams {
  const _$DeleteTransactionParamsImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteTransactionParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransactionParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTransactionParamsImplCopyWith<_$DeleteTransactionParamsImpl>
  get copyWith =>
      __$$DeleteTransactionParamsImplCopyWithImpl<
        _$DeleteTransactionParamsImpl
      >(this, _$identity);
}

abstract class _DeleteTransactionParams implements DeleteTransactionParams {
  const factory _DeleteTransactionParams({required final int id}) =
      _$DeleteTransactionParamsImpl;

  @override
  int get id;

  /// Create a copy of DeleteTransactionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTransactionParamsImplCopyWith<_$DeleteTransactionParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

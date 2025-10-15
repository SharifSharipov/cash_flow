// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TransactionBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(int delete) delete,
    required TResult Function() clearAll,
    required TResult Function(String type) getByTypeId,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(int delete)? delete,
    TResult? Function()? clearAll,
    TResult? Function(String type)? getByTypeId,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(int delete)? delete,
    TResult Function()? clearAll,
    TResult Function(String type)? getByTypeId,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Deletete value) delete,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_GetByTypeId value) getByTypeId,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Deletete value)? delete,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_GetByTypeId value)? getByTypeId,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Deletete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_GetByTypeId value)? getByTypeId,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionBlocEventCopyWith<$Res> {
  factory $TransactionBlocEventCopyWith(
    TransactionBlocEvent value,
    $Res Function(TransactionBlocEvent) then,
  ) = _$TransactionBlocEventCopyWithImpl<$Res, TransactionBlocEvent>;
}

/// @nodoc
class _$TransactionBlocEventCopyWithImpl<
  $Res,
  $Val extends TransactionBlocEvent
>
    implements $TransactionBlocEventCopyWith<$Res> {
  _$TransactionBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllImplCopyWith<$Res> {
  factory _$$GetAllImplCopyWith(
    _$GetAllImpl value,
    $Res Function(_$GetAllImpl) then,
  ) = __$$GetAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllImplCopyWithImpl<$Res>
    extends _$TransactionBlocEventCopyWithImpl<$Res, _$GetAllImpl>
    implements _$$GetAllImplCopyWith<$Res> {
  __$$GetAllImplCopyWithImpl(
    _$GetAllImpl _value,
    $Res Function(_$GetAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllImpl implements _GetAll {
  const _$GetAllImpl();

  @override
  String toString() {
    return 'TransactionBlocEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(int delete) delete,
    required TResult Function() clearAll,
    required TResult Function(String type) getByTypeId,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(int delete)? delete,
    TResult? Function()? clearAll,
    TResult? Function(String type)? getByTypeId,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(int delete)? delete,
    TResult Function()? clearAll,
    TResult Function(String type)? getByTypeId,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Deletete value) delete,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_GetByTypeId value) getByTypeId,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Deletete value)? delete,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_GetByTypeId value)? getByTypeId,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Deletete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_GetByTypeId value)? getByTypeId,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAll implements TransactionBlocEvent {
  const factory _GetAll() = _$GetAllImpl;
}

/// @nodoc
abstract class _$$DeleteteImplCopyWith<$Res> {
  factory _$$DeleteteImplCopyWith(
    _$DeleteteImpl value,
    $Res Function(_$DeleteteImpl) then,
  ) = __$$DeleteteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int delete});
}

/// @nodoc
class __$$DeleteteImplCopyWithImpl<$Res>
    extends _$TransactionBlocEventCopyWithImpl<$Res, _$DeleteteImpl>
    implements _$$DeleteteImplCopyWith<$Res> {
  __$$DeleteteImplCopyWithImpl(
    _$DeleteteImpl _value,
    $Res Function(_$DeleteteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? delete = null}) {
    return _then(
      _$DeleteteImpl(
        delete: null == delete
            ? _value.delete
            : delete // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteteImpl implements _Deletete {
  const _$DeleteteImpl({required this.delete});

  @override
  final int delete;

  @override
  String toString() {
    return 'TransactionBlocEvent.delete(delete: $delete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteteImpl &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delete);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteteImplCopyWith<_$DeleteteImpl> get copyWith =>
      __$$DeleteteImplCopyWithImpl<_$DeleteteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(int delete) delete,
    required TResult Function() clearAll,
    required TResult Function(String type) getByTypeId,
  }) {
    return delete(this.delete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(int delete)? delete,
    TResult? Function()? clearAll,
    TResult? Function(String type)? getByTypeId,
  }) {
    return delete?.call(this.delete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(int delete)? delete,
    TResult Function()? clearAll,
    TResult Function(String type)? getByTypeId,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this.delete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Deletete value) delete,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_GetByTypeId value) getByTypeId,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Deletete value)? delete,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_GetByTypeId value)? getByTypeId,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Deletete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_GetByTypeId value)? getByTypeId,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Deletete implements TransactionBlocEvent {
  const factory _Deletete({required final int delete}) = _$DeleteteImpl;

  int get delete;

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteteImplCopyWith<_$DeleteteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllImplCopyWith<$Res> {
  factory _$$ClearAllImplCopyWith(
    _$ClearAllImpl value,
    $Res Function(_$ClearAllImpl) then,
  ) = __$$ClearAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllImplCopyWithImpl<$Res>
    extends _$TransactionBlocEventCopyWithImpl<$Res, _$ClearAllImpl>
    implements _$$ClearAllImplCopyWith<$Res> {
  __$$ClearAllImplCopyWithImpl(
    _$ClearAllImpl _value,
    $Res Function(_$ClearAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAllImpl implements _ClearAll {
  const _$ClearAllImpl();

  @override
  String toString() {
    return 'TransactionBlocEvent.clearAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(int delete) delete,
    required TResult Function() clearAll,
    required TResult Function(String type) getByTypeId,
  }) {
    return clearAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(int delete)? delete,
    TResult? Function()? clearAll,
    TResult? Function(String type)? getByTypeId,
  }) {
    return clearAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(int delete)? delete,
    TResult Function()? clearAll,
    TResult Function(String type)? getByTypeId,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Deletete value) delete,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_GetByTypeId value) getByTypeId,
  }) {
    return clearAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Deletete value)? delete,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_GetByTypeId value)? getByTypeId,
  }) {
    return clearAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Deletete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_GetByTypeId value)? getByTypeId,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll(this);
    }
    return orElse();
  }
}

abstract class _ClearAll implements TransactionBlocEvent {
  const factory _ClearAll() = _$ClearAllImpl;
}

/// @nodoc
abstract class _$$GetByTypeIdImplCopyWith<$Res> {
  factory _$$GetByTypeIdImplCopyWith(
    _$GetByTypeIdImpl value,
    $Res Function(_$GetByTypeIdImpl) then,
  ) = __$$GetByTypeIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$GetByTypeIdImplCopyWithImpl<$Res>
    extends _$TransactionBlocEventCopyWithImpl<$Res, _$GetByTypeIdImpl>
    implements _$$GetByTypeIdImplCopyWith<$Res> {
  __$$GetByTypeIdImplCopyWithImpl(
    _$GetByTypeIdImpl _value,
    $Res Function(_$GetByTypeIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null}) {
    return _then(
      _$GetByTypeIdImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetByTypeIdImpl implements _GetByTypeId {
  const _$GetByTypeIdImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'TransactionBlocEvent.getByTypeId(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByTypeIdImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByTypeIdImplCopyWith<_$GetByTypeIdImpl> get copyWith =>
      __$$GetByTypeIdImplCopyWithImpl<_$GetByTypeIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(int delete) delete,
    required TResult Function() clearAll,
    required TResult Function(String type) getByTypeId,
  }) {
    return getByTypeId(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(int delete)? delete,
    TResult? Function()? clearAll,
    TResult? Function(String type)? getByTypeId,
  }) {
    return getByTypeId?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(int delete)? delete,
    TResult Function()? clearAll,
    TResult Function(String type)? getByTypeId,
    required TResult orElse(),
  }) {
    if (getByTypeId != null) {
      return getByTypeId(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAll value) getAll,
    required TResult Function(_Deletete value) delete,
    required TResult Function(_ClearAll value) clearAll,
    required TResult Function(_GetByTypeId value) getByTypeId,
  }) {
    return getByTypeId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAll value)? getAll,
    TResult? Function(_Deletete value)? delete,
    TResult? Function(_ClearAll value)? clearAll,
    TResult? Function(_GetByTypeId value)? getByTypeId,
  }) {
    return getByTypeId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAll value)? getAll,
    TResult Function(_Deletete value)? delete,
    TResult Function(_ClearAll value)? clearAll,
    TResult Function(_GetByTypeId value)? getByTypeId,
    required TResult orElse(),
  }) {
    if (getByTypeId != null) {
      return getByTypeId(this);
    }
    return orElse();
  }
}

abstract class _GetByTypeId implements TransactionBlocEvent {
  const factory _GetByTypeId({required final String type}) = _$GetByTypeIdImpl;

  String get type;

  /// Create a copy of TransactionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetByTypeIdImplCopyWith<_$GetByTypeIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionBlocState {
  Failure get failure => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  List<TransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )?
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )?
    initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of TransactionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionBlocStateCopyWith<TransactionBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionBlocStateCopyWith<$Res> {
  factory $TransactionBlocStateCopyWith(
    TransactionBlocState value,
    $Res Function(TransactionBlocState) then,
  ) = _$TransactionBlocStateCopyWithImpl<$Res, TransactionBlocState>;
  @useResult
  $Res call({
    Failure failure,
    Status status,
    List<TransactionEntity> transactions,
  });
}

/// @nodoc
class _$TransactionBlocStateCopyWithImpl<
  $Res,
  $Val extends TransactionBlocState
>
    implements $TransactionBlocStateCopyWith<$Res> {
  _$TransactionBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? status = null,
    Object? transactions = null,
  }) {
    return _then(
      _value.copyWith(
            failure: null == failure
                ? _value.failure
                : failure // ignore: cast_nullable_to_non_nullable
                      as Failure,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as Status,
            transactions: null == transactions
                ? _value.transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                      as List<TransactionEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TransactionBlocStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Failure failure,
    Status status,
    List<TransactionEntity> transactions,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TransactionBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? status = null,
    Object? transactions = null,
  }) {
    return _then(
      _$InitialImpl(
        failure: null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as Status,
        transactions: null == transactions
            ? _value._transactions
            : transactions // ignore: cast_nullable_to_non_nullable
                  as List<TransactionEntity>,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.failure = const UnknownFailure(),
    this.status = Status.initial,
    final List<TransactionEntity> transactions = const [],
  }) : _transactions = transactions;

  @override
  @JsonKey()
  final Failure failure;
  @override
  @JsonKey()
  final Status status;
  final List<TransactionEntity> _transactions;
  @override
  @JsonKey()
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'TransactionBlocState.initial(failure: $failure, status: $status, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._transactions,
              _transactions,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    failure,
    status,
    const DeepCollectionEquality().hash(_transactions),
  );

  /// Create a copy of TransactionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )
    initial,
  }) {
    return initial(failure, status, transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )?
    initial,
  }) {
    return initial?.call(failure, status, transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Failure failure,
      Status status,
      List<TransactionEntity> transactions,
    )?
    initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(failure, status, transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionBlocState {
  const factory _Initial({
    final Failure failure,
    final Status status,
    final List<TransactionEntity> transactions,
  }) = _$InitialImpl;

  @override
  Failure get failure;
  @override
  Status get status;
  @override
  List<TransactionEntity> get transactions;

  /// Create a copy of TransactionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

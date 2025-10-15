// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionEntity entity) addTrasanction,
    required TResult Function(int index) selectMoneyType,
    required TResult Function(int id, TransactionEntity entity)
    updateTransaction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionEntity entity)? addTrasanction,
    TResult? Function(int index)? selectMoneyType,
    TResult? Function(int id, TransactionEntity entity)? updateTransaction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionEntity entity)? addTrasanction,
    TResult Function(int index)? selectMoneyType,
    TResult Function(int id, TransactionEntity entity)? updateTransaction,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdTrasanction value) addTrasanction,
    required TResult Function(_SelectMoneyType value) selectMoneyType,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdTrasanction value)? addTrasanction,
    TResult? Function(_SelectMoneyType value)? selectMoneyType,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdTrasanction value)? addTrasanction,
    TResult Function(_SelectMoneyType value)? selectMoneyType,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionEventCopyWith<$Res> {
  factory $AddTransactionEventCopyWith(
    AddTransactionEvent value,
    $Res Function(AddTransactionEvent) then,
  ) = _$AddTransactionEventCopyWithImpl<$Res, AddTransactionEvent>;
}

/// @nodoc
class _$AddTransactionEventCopyWithImpl<$Res, $Val extends AddTransactionEvent>
    implements $AddTransactionEventCopyWith<$Res> {
  _$AddTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdTrasanctionImplCopyWith<$Res> {
  factory _$$AdTrasanctionImplCopyWith(
    _$AdTrasanctionImpl value,
    $Res Function(_$AdTrasanctionImpl) then,
  ) = __$$AdTrasanctionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionEntity entity});
}

/// @nodoc
class __$$AdTrasanctionImplCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$AdTrasanctionImpl>
    implements _$$AdTrasanctionImplCopyWith<$Res> {
  __$$AdTrasanctionImplCopyWithImpl(
    _$AdTrasanctionImpl _value,
    $Res Function(_$AdTrasanctionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entity = null}) {
    return _then(
      _$AdTrasanctionImpl(
        entity: null == entity
            ? _value.entity
            : entity // ignore: cast_nullable_to_non_nullable
                  as TransactionEntity,
      ),
    );
  }
}

/// @nodoc

class _$AdTrasanctionImpl implements _AdTrasanction {
  const _$AdTrasanctionImpl({required this.entity});

  @override
  final TransactionEntity entity;

  @override
  String toString() {
    return 'AddTransactionEvent.addTrasanction(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdTrasanctionImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdTrasanctionImplCopyWith<_$AdTrasanctionImpl> get copyWith =>
      __$$AdTrasanctionImplCopyWithImpl<_$AdTrasanctionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionEntity entity) addTrasanction,
    required TResult Function(int index) selectMoneyType,
    required TResult Function(int id, TransactionEntity entity)
    updateTransaction,
  }) {
    return addTrasanction(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionEntity entity)? addTrasanction,
    TResult? Function(int index)? selectMoneyType,
    TResult? Function(int id, TransactionEntity entity)? updateTransaction,
  }) {
    return addTrasanction?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionEntity entity)? addTrasanction,
    TResult Function(int index)? selectMoneyType,
    TResult Function(int id, TransactionEntity entity)? updateTransaction,
    required TResult orElse(),
  }) {
    if (addTrasanction != null) {
      return addTrasanction(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdTrasanction value) addTrasanction,
    required TResult Function(_SelectMoneyType value) selectMoneyType,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return addTrasanction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdTrasanction value)? addTrasanction,
    TResult? Function(_SelectMoneyType value)? selectMoneyType,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return addTrasanction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdTrasanction value)? addTrasanction,
    TResult Function(_SelectMoneyType value)? selectMoneyType,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (addTrasanction != null) {
      return addTrasanction(this);
    }
    return orElse();
  }
}

abstract class _AdTrasanction implements AddTransactionEvent {
  const factory _AdTrasanction({required final TransactionEntity entity}) =
      _$AdTrasanctionImpl;

  TransactionEntity get entity;

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdTrasanctionImplCopyWith<_$AdTrasanctionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectMoneyTypeImplCopyWith<$Res> {
  factory _$$SelectMoneyTypeImplCopyWith(
    _$SelectMoneyTypeImpl value,
    $Res Function(_$SelectMoneyTypeImpl) then,
  ) = __$$SelectMoneyTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectMoneyTypeImplCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$SelectMoneyTypeImpl>
    implements _$$SelectMoneyTypeImplCopyWith<$Res> {
  __$$SelectMoneyTypeImplCopyWithImpl(
    _$SelectMoneyTypeImpl _value,
    $Res Function(_$SelectMoneyTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$SelectMoneyTypeImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelectMoneyTypeImpl implements _SelectMoneyType {
  const _$SelectMoneyTypeImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AddTransactionEvent.selectMoneyType(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMoneyTypeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMoneyTypeImplCopyWith<_$SelectMoneyTypeImpl> get copyWith =>
      __$$SelectMoneyTypeImplCopyWithImpl<_$SelectMoneyTypeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionEntity entity) addTrasanction,
    required TResult Function(int index) selectMoneyType,
    required TResult Function(int id, TransactionEntity entity)
    updateTransaction,
  }) {
    return selectMoneyType(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionEntity entity)? addTrasanction,
    TResult? Function(int index)? selectMoneyType,
    TResult? Function(int id, TransactionEntity entity)? updateTransaction,
  }) {
    return selectMoneyType?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionEntity entity)? addTrasanction,
    TResult Function(int index)? selectMoneyType,
    TResult Function(int id, TransactionEntity entity)? updateTransaction,
    required TResult orElse(),
  }) {
    if (selectMoneyType != null) {
      return selectMoneyType(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdTrasanction value) addTrasanction,
    required TResult Function(_SelectMoneyType value) selectMoneyType,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return selectMoneyType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdTrasanction value)? addTrasanction,
    TResult? Function(_SelectMoneyType value)? selectMoneyType,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return selectMoneyType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdTrasanction value)? addTrasanction,
    TResult Function(_SelectMoneyType value)? selectMoneyType,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (selectMoneyType != null) {
      return selectMoneyType(this);
    }
    return orElse();
  }
}

abstract class _SelectMoneyType implements AddTransactionEvent {
  const factory _SelectMoneyType({required final int index}) =
      _$SelectMoneyTypeImpl;

  int get index;

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectMoneyTypeImplCopyWith<_$SelectMoneyTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionImplCopyWith<$Res> {
  factory _$$UpdateTransactionImplCopyWith(
    _$UpdateTransactionImpl value,
    $Res Function(_$UpdateTransactionImpl) then,
  ) = __$$UpdateTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, TransactionEntity entity});
}

/// @nodoc
class __$$UpdateTransactionImplCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$UpdateTransactionImpl>
    implements _$$UpdateTransactionImplCopyWith<$Res> {
  __$$UpdateTransactionImplCopyWithImpl(
    _$UpdateTransactionImpl _value,
    $Res Function(_$UpdateTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? entity = null}) {
    return _then(
      _$UpdateTransactionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        entity: null == entity
            ? _value.entity
            : entity // ignore: cast_nullable_to_non_nullable
                  as TransactionEntity,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTransactionImpl implements _UpdateTransaction {
  const _$UpdateTransactionImpl({required this.id, required this.entity});

  @override
  final int id;
  @override
  final TransactionEntity entity;

  @override
  String toString() {
    return 'AddTransactionEvent.updateTransaction(id: $id, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, entity);

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionImplCopyWith<_$UpdateTransactionImpl> get copyWith =>
      __$$UpdateTransactionImplCopyWithImpl<_$UpdateTransactionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionEntity entity) addTrasanction,
    required TResult Function(int index) selectMoneyType,
    required TResult Function(int id, TransactionEntity entity)
    updateTransaction,
  }) {
    return updateTransaction(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionEntity entity)? addTrasanction,
    TResult? Function(int index)? selectMoneyType,
    TResult? Function(int id, TransactionEntity entity)? updateTransaction,
  }) {
    return updateTransaction?.call(id, entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionEntity entity)? addTrasanction,
    TResult Function(int index)? selectMoneyType,
    TResult Function(int id, TransactionEntity entity)? updateTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(id, entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdTrasanction value) addTrasanction,
    required TResult Function(_SelectMoneyType value) selectMoneyType,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdTrasanction value)? addTrasanction,
    TResult? Function(_SelectMoneyType value)? selectMoneyType,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdTrasanction value)? addTrasanction,
    TResult Function(_SelectMoneyType value)? selectMoneyType,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransaction implements AddTransactionEvent {
  const factory _UpdateTransaction({
    required final int id,
    required final TransactionEntity entity,
  }) = _$UpdateTransactionImpl;

  int get id;
  TransactionEntity get entity;

  /// Create a copy of AddTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionImplCopyWith<_$UpdateTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddTransactionState {
  Failure get failure => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure failure, Status status, int? index)
    initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure failure, Status status, int? index)? initial,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure failure, Status status, int? index)? initial,
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

  /// Create a copy of AddTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTransactionStateCopyWith<AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionStateCopyWith<$Res> {
  factory $AddTransactionStateCopyWith(
    AddTransactionState value,
    $Res Function(AddTransactionState) then,
  ) = _$AddTransactionStateCopyWithImpl<$Res, AddTransactionState>;
  @useResult
  $Res call({Failure failure, Status status, int? index});
}

/// @nodoc
class _$AddTransactionStateCopyWithImpl<$Res, $Val extends AddTransactionState>
    implements $AddTransactionStateCopyWith<$Res> {
  _$AddTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? status = null,
    Object? index = freezed,
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
            index: freezed == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure failure, Status status, int? index});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? status = null,
    Object? index = freezed,
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
        index: freezed == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.failure = const UnknownFailure(),
    this.status = Status.initial,
    this.index,
  });

  @override
  @JsonKey()
  final Failure failure;
  @override
  @JsonKey()
  final Status status;
  @override
  final int? index;

  @override
  String toString() {
    return 'AddTransactionState.initial(failure: $failure, status: $status, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, status, index);

  /// Create a copy of AddTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Failure failure, Status status, int? index)
    initial,
  }) {
    return initial(failure, status, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Failure failure, Status status, int? index)? initial,
  }) {
    return initial?.call(failure, status, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Failure failure, Status status, int? index)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(failure, status, index);
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

abstract class _Initial implements AddTransactionState {
  const factory _Initial({
    final Failure failure,
    final Status status,
    final int? index,
  }) = _$InitialImpl;

  @override
  Failure get failure;
  @override
  Status get status;
  @override
  int? get index;

  /// Create a copy of AddTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

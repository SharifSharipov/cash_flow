part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionState with _$AddTransactionState {
  const factory AddTransactionState.initial({
    @Default(UnknownFailure()) Failure failure,
    @Default(Status.initial) Status status,
    int? index,
  }) = _Initial;
}

part of 'transaction_bloc_bloc.dart';

@freezed
class TransactionBlocState with _$TransactionBlocState {
  const factory TransactionBlocState.initial({
    @Default(UnknownFailure()) Failure failure,
    @Default(Status.initial) Status status,
    @Default([]) List<TransactionEntity> transactions,
  }) = _Initial;
}

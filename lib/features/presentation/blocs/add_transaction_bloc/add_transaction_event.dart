part of 'add_transaction_bloc.dart';

@freezed
class AddTransactionEvent with _$AddTransactionEvent {
  const factory AddTransactionEvent.addTrasanction({
    required TransactionEntity entity,
  }) = _AdTrasanction;
  const factory AddTransactionEvent.selectMoneyType({
    required int index,
  }) = _SelectMoneyType;
  const factory AddTransactionEvent.updateTransaction({
    required int id,
    required TransactionEntity entity,
  }) = _UpdateTransaction;
}

part of 'transaction_bloc_bloc.dart';

@freezed
class TransactionBlocEvent with _$TransactionBlocEvent {
  const factory TransactionBlocEvent.getAll() = _GetAll;
  const factory TransactionBlocEvent.delete({required int delete}) = _Deletete;
  const factory TransactionBlocEvent.clearAll() = _ClearAll;
  const factory TransactionBlocEvent.getByTypeId({required String type}) = _GetByTypeId;
}

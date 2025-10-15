import 'package:bloc/bloc.dart';
import 'package:cash_flow/constants/constants.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/usecase/add_transaction/add_transaction.dart';
import 'package:cash_flow/features/domain/usecase/update_transaction/update_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_transaction_event.dart';
part 'add_transaction_state.dart';
part 'add_transaction_bloc.freezed.dart';

class AddTransactionBloc
    extends Bloc<AddTransactionEvent, AddTransactionState> {
  final UpdateTransaction updateTransaction;
  final AddTransaction addTransaction;
  AddTransactionBloc({
    required this.updateTransaction,
    required this.addTransaction,
  }) : super(_Initial()) {
    on<_UpdateTransaction>(_updateTransaction);
    on<_AdTrasanction>(_addTransaction);
    on<_SelectMoneyType>(_selectMoneyType);
  }
  Future<void> _updateTransaction(
    _UpdateTransaction event,
    Emitter<AddTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await updateTransaction(
      UpdateTransactionParams(id: event.id, model: event.entity),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success)),
    );
  }

  Future<void> _addTransaction(
    _AdTrasanction event,
    Emitter<AddTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await addTransaction(
      AddTransactionParams(model: event.entity),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success)),
    );
  }

  Future<void> _selectMoneyType(
    _SelectMoneyType event,
    Emitter<AddTransactionState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    emit(state.copyWith(status: Status.success, index: event.index));
  }
}

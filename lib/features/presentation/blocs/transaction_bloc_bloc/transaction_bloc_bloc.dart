import 'package:bloc/bloc.dart';
import 'package:cash_flow/constants/constants.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/usecase/clear_all_transactions/clear_all_transactions.dart';
import 'package:cash_flow/features/domain/usecase/delete_transaction/delete_transaction.dart';
import 'package:cash_flow/features/domain/usecase/get_all_transactions/get_all_transactions.dart';
import 'package:cash_flow/features/domain/usecase/get_transactions_by_type/get_transactions_by_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_bloc_event.dart';
part 'transaction_bloc_state.dart';
part 'transaction_bloc_bloc.freezed.dart';

class TransactionBlocBloc
    extends Bloc<TransactionBlocEvent, TransactionBlocState> {
  final GetAllTransactions getAllTransactions;
  final DeleteTransaction deleteTransaction;
  final ClearAllTransactions clearAllTransactions;
  final GetTransactionsByType getTransactionsByType;
  TransactionBlocBloc({
    required this.getAllTransactions,
    required this.deleteTransaction,
    required this.clearAllTransactions,
    required this.getTransactionsByType,
  }) : super(_Initial()) {
    on<_GetAll>(_getAllTransactions);
    on<_Deletete>(_deleteTransaction);
    on<_ClearAll>(_clearAllTransactions);
    on<_GetByTypeId>(_getTransactionsByType);
  }
  Future<void> _getAllTransactions(
    _GetAll event,
    Emitter<TransactionBlocState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await getAllTransactions(NoParams());
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) =>
          emit(state.copyWith(status: Status.success, transactions: data)),
    );
  }

  Future<void> _deleteTransaction(
    _Deletete event,
    Emitter<TransactionBlocState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await deleteTransaction(
      DeleteTransactionParams(id: event.delete),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success)),
    );
  }

  Future<void> _clearAllTransactions(
    _ClearAll event,
    Emitter<TransactionBlocState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await clearAllTransactions(NoParams());
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success)),
    );
  }

  Future<void> _getTransactionsByType(
    _GetByTypeId event,
    Emitter<TransactionBlocState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await getTransactionsByType(
      GetTransactionsByTypeParams(type: event.type),
    );
    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) =>
          emit(state.copyWith(status: Status.success, transactions: data)),
    );
  }
}

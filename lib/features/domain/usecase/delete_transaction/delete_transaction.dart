
import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failure.dart';

part 'delete_transaction.freezed.dart';

class DeleteTransaction implements UseCase<int, DeleteTransactionParams> {
  final TransactionRepository repository;

  DeleteTransaction(this.repository);

  @override
  Future<Either<Failure, int>> call(DeleteTransactionParams params) async {
    return await repository.delete(id: params.id);
  }
}

@freezed
class DeleteTransactionParams with _$DeleteTransactionParams {
  const factory DeleteTransactionParams({
    required int id,
  }) = _DeleteTransactionParams;
}

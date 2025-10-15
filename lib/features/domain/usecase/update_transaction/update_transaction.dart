import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failure.dart';
part 'update_transaction.freezed.dart';

class UpdateTransaction implements UseCase<int, UpdateTransactionParams> {
  final TransactionRepository repository;

  UpdateTransaction(this.repository);

  @override
  Future<Either<Failure, int>> call(UpdateTransactionParams params) async {
    return await repository.update(
      id: params.id,
      model: params.model,
    );
  }
}

@freezed
class UpdateTransactionParams with _$UpdateTransactionParams {
  const factory UpdateTransactionParams({
    required int id,
    required TransactionEntity model,
  }) = _UpdateTransactionParams;
}

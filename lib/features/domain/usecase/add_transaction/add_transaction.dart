import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/failure.dart';

import '../../entitiy/transaction_entity.dart';
import '../../repository/transaction_repository.dart';

part 'add_transaction.freezed.dart';

class AddTransaction implements UseCase<int, AddTransactionParams> {
  final TransactionRepository repository;

  AddTransaction(this.repository);

  @override
  Future<Either<Failure, int>> call(AddTransactionParams params) async {
    return await repository.add(model: params.model);
  }
}

@freezed
class AddTransactionParams with _$AddTransactionParams {
  const factory AddTransactionParams({
    required TransactionEntity model,
  }) = _AddTransactionParams;
}

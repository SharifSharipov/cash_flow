

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';

class ClearAllTransactions implements UseCase<void, NoParams> {
  final TransactionRepository repository;

  ClearAllTransactions(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return await repository.clearAll();
  }
}

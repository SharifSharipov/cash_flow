

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';

class GetTotalExpense implements UseCase<double, NoParams> {
  final TransactionRepository repository;

  GetTotalExpense(this.repository);

  @override
  Future<Either<Failure, double>> call(NoParams params) async {
    return await repository.getTotalExpense();
  }
}

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';

class GetExpensesByCategory implements UseCase<Map<String, double>, NoParams> {
  final TransactionRepository repository;

  GetExpensesByCategory(this.repository);

  @override
  Future<Either<Failure, Map<String, double>>> call(NoParams params) async {
    return await repository.getExpensesByCategory();
  }
}

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';
import '../../../../core/error/failure.dart';

class GetAllTransactions implements UseCase<List<TransactionEntity>, NoParams> {
  final TransactionRepository repository;

  GetAllTransactions(this.repository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(NoParams params) async {
    final result = await repository.getAll();

    return result.map(
      (list) => list.map((e) => e).toList(),
    );
  }
}

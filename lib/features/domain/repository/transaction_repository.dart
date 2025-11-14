import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<TransactionEntity>>> getAll();
  Future<Either<Failure, List<TransactionEntity>>> getByType({
    required String type,
  });
  Future<Either<Failure, int>> add({required TransactionEntity model});
  Future<Either<Failure, int>> update({
    required int id,
    required TransactionEntity model,
  });
  Future<Either<Failure, int>> delete({required int id});
  Future<Either<Failure, void>> clearAll();
  Future<Either<Failure, double>> getTotalIncome();
  Future<Either<Failure, double>> getTotalExpense();
  Future<Either<Failure, double>> getBalance();
  Future<Either<Failure, Map<String, double>>> getMonthlyAnalytics({
    required DateTime month,
  });
  Future<Either<Failure, Map<String, double>>> getExpensesByCategory();
}

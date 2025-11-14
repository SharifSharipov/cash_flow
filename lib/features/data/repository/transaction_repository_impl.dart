import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/features/data/data_source/local_data_base.dart';
import 'package:cash_flow/features/data/mapper/cash_flow_mappaer.dart';
import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final LocalDatabase database;

  TransactionRepositoryImpl({required this.database});

  @override
  Future<Either<Failure, int>> add({required TransactionEntity model}) async {
    try {
      final result = await database.insertTransaction(
        CashFlowMappaer.toTransactionModel(model),
      );
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearAll() async {
    try {
      await database.clearAll();
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> delete({required int id}) async {
    try {
      final result = await database.deleteTransaction(id);
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> getAll() async {
    try {
      final result = await database.getAllTransactions();
      final entities = result
          .map((e) => CashFlowMappaer.toTransactionEntity(e))
          .toList();
      return Right(entities);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, double>> getBalance() async {
    try {
      final result = await database.getBalance();
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TransactionEntity>>> getByType({
    required String type,
  }) async {
    try {
      final result = await database.getByType(type);
      final entities = result
          .map((e) => CashFlowMappaer.toTransactionEntity(e))
          .toList();
      return Right(entities);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, double>>> getMonthlyAnalytics({
    required DateTime month,
  }) async {
    try {
      final result = await database.getMonthlyAnalytics(month);
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, double>> getTotalExpense() async {
    try {
      final result = await database.getTotalExpense();
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, double>> getTotalIncome() async {
    try {
      final result = await database.getTotalIncome();
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> update({
    required int id,
    required TransactionEntity model,
  }) async {
    try {
      final result = await database.updateTransaction(
        id: id,
        model: CashFlowMappaer.toTransactionModel(model),
      );
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, double>>> getExpensesByCategory() async {
    try {
      final result = await database.getExpensesByCategory();
      return Right(result);
    } catch (e) {
      return Left(DatabaseFailure(message: e.toString()));
    }
  }
}

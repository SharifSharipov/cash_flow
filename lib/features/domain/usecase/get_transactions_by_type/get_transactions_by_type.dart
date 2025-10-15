import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';


import 'package:cash_flow/features/domain/entitiy/transaction_entity.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_transactions_by_type.freezed.dart';

class GetTransactionsByType
    implements UseCase<List<TransactionEntity>, GetTransactionsByTypeParams> {
  final TransactionRepository repository;

  GetTransactionsByType(this.repository);

  @override
  Future<Either<Failure, List<TransactionEntity>>> call(
    GetTransactionsByTypeParams params,
  ) async {
    final result = await repository.getByType(type: params.type);

    return result.map(
      (list) => list
          .map((model) => model)
          .toList(),
    );
  }
}

@freezed
class GetTransactionsByTypeParams with _$GetTransactionsByTypeParams {
  const factory GetTransactionsByTypeParams({
    required String type,
  }) = _GetTransactionsByTypeParams;
}

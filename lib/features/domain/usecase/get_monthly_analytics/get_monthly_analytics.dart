

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart' show Failure;
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/repository/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_monthly_analytics.freezed.dart';

class GetMonthlyAnalytics
    implements UseCase<Map<String, double>, GetMonthlyAnalyticsParams> {
  final TransactionRepository repository;

  GetMonthlyAnalytics(this.repository);

  @override
  Future<Either<Failure, Map<String, double>>> call(
    GetMonthlyAnalyticsParams params,
  ) async {
    return await repository.getMonthlyAnalytics(month: params.month);
  }
}

@freezed
class GetMonthlyAnalyticsParams with _$GetMonthlyAnalyticsParams {
  const factory GetMonthlyAnalyticsParams({
    required DateTime month,
  }) = _GetMonthlyAnalyticsParams;
}

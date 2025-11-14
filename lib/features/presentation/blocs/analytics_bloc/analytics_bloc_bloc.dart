import 'package:bloc/bloc.dart';
import 'package:cash_flow/constants/constants.dart';
import 'package:cash_flow/core/error/failure.dart';
import 'package:cash_flow/core/usecase/usecase.dart';
import 'package:cash_flow/features/domain/usecase/get_balance/get_balance.dart';
import 'package:cash_flow/features/domain/usecase/get_monthly_analytics/get_monthly_analytics.dart';
import 'package:cash_flow/features/domain/usecase/get_total_expense/get_total_expense.dart';
import 'package:cash_flow/features/domain/usecase/get_total_income/get_total_income.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_bloc_event.dart';
part 'analytics_bloc_state.dart';
part 'analytics_bloc_bloc.freezed.dart';

class AnalyticsBlocBloc extends Bloc<AnalyticsBlocEvent, AnalyticsBlocState> {
  final GetTotalIncome getTotalIncome;
  final GetTotalExpense getTotalExpense;
  final GetBalance getBalance;
  final GetMonthlyAnalytics getMonthlyAnalytics;

  AnalyticsBlocBloc({
    required this.getTotalIncome,
    required this.getTotalExpense,
    required this.getBalance,
    required this.getMonthlyAnalytics,
  }) : super(const AnalyticsBlocState.initial()) {
    on<_Loadanaliytics>(_onLoadAnalytics);
    on<_GetMonthlyAnalytics>(_onGetMonthlyAnalytics);
  }

  Future<void> _onLoadAnalytics(
      _Loadanaliytics event, Emitter<AnalyticsBlocState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final incomeResult = await getTotalIncome(NoParams());
    final expenseResult = await getTotalExpense(NoParams());
    final balanceResult = await getBalance(NoParams());

    final income = incomeResult.fold((failure) => 0.0, (value) => value);
    final expense = expenseResult.fold((failure) => 0.0, (value) => value);
    final balance = balanceResult.fold((failure) => 0.0, (value) => value);

    emit(state.copyWith(
      status: Status.success,
      income: income,
      expense: expense,
      balance: balance,
    ));
  }

  Future<void> _onGetMonthlyAnalytics(
      _GetMonthlyAnalytics event,  Emitter<AnalyticsBlocState> emit) async {
   emit(state.copyWith(status: Status.loading));
    final result = await getMonthlyAnalytics(GetMonthlyAnalyticsParams(month: event.month));

    result.fold(
      (failure) => emit(state.copyWith(failure: failure, status: Status.error)),
      (data) => emit(state.copyWith(status: Status.success, monthlyData: data)),
    );
  }}

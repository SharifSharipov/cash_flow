part of 'analytics_bloc_bloc.dart';

@freezed
class AnalyticsBlocState with _$AnalyticsBlocState {
  const factory AnalyticsBlocState.initial({
    @Default(UnknownFailure()) Failure failure,
    @Default(Status.initial) Status status,
    @Default(0) double income,
    @Default(0) double expense,
    @Default(0) double balance,
    @Default({}) Map<String, double> monthlyData,
  }) = _Initial;
}

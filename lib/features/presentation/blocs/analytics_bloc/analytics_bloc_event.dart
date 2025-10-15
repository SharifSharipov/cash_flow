part of 'analytics_bloc_bloc.dart';

@freezed
class AnalyticsBlocEvent with _$AnalyticsBlocEvent {
  const factory AnalyticsBlocEvent.loadAnaliytics() = _Loadanaliytics;
  const factory AnalyticsBlocEvent.getMonthlyAnalytics(DateTime month) =
      _GetMonthlyAnalytics;
}

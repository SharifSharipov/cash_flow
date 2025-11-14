import 'package:cash_flow/features/presentation/blocs/analytics_bloc/analytics_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/analytics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin AnalyticsMixin on State<AnalyticsPage> {
  AnalyticsBlocBloc get bloc => context.read<AnalyticsBlocBloc>();
  final now = DateTime.now();

  void _loadAnalytics() {
    bloc.add(AnalyticsBlocEvent.loadAnaliytics());
    bloc.add(
      AnalyticsBlocEvent.getMonthlyAnalytics(DateTime(now.year, now.month, 1)),
    );
  }

  @override
  void initState() {
    _loadAnalytics();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Sahifa qaytib kelganda ma'lumotlarni yangilash
    Future.delayed(Duration(milliseconds: 50), () {
      if (mounted) {
        _loadAnalytics();
      }
    });
  }
}

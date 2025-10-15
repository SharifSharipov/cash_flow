import 'package:cash_flow/core/common/custom_app_bar.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:cash_flow/features/presentation/blocs/analytics_bloc/analytics_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/analytics_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> with AnalyticsMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AnalyticsBlocBloc, AnalyticsBlocState>(
        builder: (context, state) => Scaffold(
          appBar: CustomAppBar(
            key: const Key('analytics_page'),
            title: "Analytics page",
          ),
          body: Column(
            spacing: he(10),

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                key: const Key('total_income'),
                "Total Income: ${state.income.toStringAsFixed(2)}",
                style: context.textStyle.bodyBody,
              ),
              Text(
                key: const Key('total_expense'),
                "Total Expense: ${state.expense.toStringAsFixed(2)}",
                style: context.textStyle.bodyBody,
              ),
              Text(
                key: const Key('balance'),
                "Balance: ${state.balance.toStringAsFixed(2)}",
                style: context.textStyle.bodyBody,
              ),
              Text(
                key: const Key('monthly_analytics'),
                "Monthly Analytics",
                style: context.textStyle.bodyBody,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.monthlyData.length,
                  itemBuilder: (context, index) {
                    final key = state.monthlyData.keys.elementAt(index);
                    final value = state.monthlyData[key];
                    return ListTile(
                      key: const Key('title'),
                      tileColor: context.isDarkMode
                          ? const Color.fromARGB(255, 57, 66, 64)
                          : const Color.fromARGB(255, 249, 247, 247),
                      title: Text(key, style: context.textStyle.bodyBody),
                      trailing: Text(
                        value?.toStringAsFixed(2) ?? '0',
                        style: context.textStyle.bodyBody,
                      ),
                    ).paddingSymmetric(vertical: he(5));
                  },
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: wi(16)),
        ),
      );
}

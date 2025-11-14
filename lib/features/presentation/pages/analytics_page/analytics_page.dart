import 'package:cash_flow/core/common/custom_app_bar.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:cash_flow/features/presentation/blocs/analytics_bloc/analytics_bloc_bloc.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/analytics_mixin.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/widgets/income_expense_pie_chart.dart';
import 'package:cash_flow/features/presentation/pages/analytics_page/widgets/monthly_bar_chart.dart';
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
            title: "Аналитика",
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: wi(16)),
            child: Column(
              spacing: he(20),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Общая информация
                Container(
                  padding: EdgeInsets.all(wi(16)),
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? const Color.fromARGB(255, 57, 66, 64)
                        : const Color.fromARGB(255, 249, 247, 247),
                    borderRadius: BorderRadius.circular(wi(12)),
                  ),
                  child: Column(
                    spacing: he(12),
                    children: [
                      _buildInfoRow(
                        context,
                        label: "Общий доход:",
                        value: Formatter.formatCurrency(state.income),
                        color: Colors.green,
                      ),
                      _buildInfoRow(
                        context,
                        label: "Общий расход:",
                        value: Formatter.formatCurrency(state.expense),
                        color: Colors.red,
                      ),
                      Divider(color: context.isDarkMode ? Colors.white24 : Colors.black26),
                      _buildInfoRow(
                        context,
                        label: "Баланс:",
                        value: Formatter.formatCurrency(state.balance),
                        color: state.balance >= 0 ? Colors.blue : Colors.orange,
                        isBold: true,
                      ),
                    ],
                  ),
                ),

                // Круговая диаграмма
                Container(
                  padding: EdgeInsets.all(wi(16)),
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? const Color.fromARGB(255, 57, 66, 64)
                        : const Color.fromARGB(255, 249, 247, 247),
                    borderRadius: BorderRadius.circular(wi(12)),
                  ),
                  child: IncomeExpensePieChart(
                    income: state.income,
                    expense: state.expense,
                  ),
                ),

                // Столбчатая диаграмма
                Container(
                  padding: EdgeInsets.all(wi(16)),
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? const Color.fromARGB(255, 57, 66, 64)
                        : const Color.fromARGB(255, 249, 247, 247),
                    borderRadius: BorderRadius.circular(wi(12)),
                  ),
                  child: MonthlyBarChart(
                    monthlyData: state.monthlyData,
                  ),
                ),

                // Детальная месячная статистика
                if (state.monthlyData.isNotEmpty) ...[
                  Text(
                    "Детальная статистика по месяцам",
                    style: context.textStyle.bodyBody.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  ...state.monthlyData.entries.map((entry) {
                    return Container(
                      margin: EdgeInsets.only(bottom: he(8)),
                      padding: EdgeInsets.all(wi(12)),
                      decoration: BoxDecoration(
                        color: context.isDarkMode
                            ? const Color.fromARGB(255, 57, 66, 64)
                            : const Color.fromARGB(255, 249, 247, 247),
                        borderRadius: BorderRadius.circular(wi(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            entry.key,
                            style: context.textStyle.bodyBody,
                          ),
                          Text(
                            Formatter.formatCurrency(entry.value),
                            style: context.textStyle.bodyBody.copyWith(
                              fontWeight: FontWeight.w600,
                              color: entry.value >= 0 ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ],

                SizedBox(height: he(20)),
              ],
            ),
          ),
        ),
      );

  Widget _buildInfoRow(
    BuildContext context, {
    required String label,
    required String value,
    required Color color,
    bool isBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: context.textStyle.bodyBody.copyWith(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: context.textStyle.bodyBody.copyWith(
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            color: color,
            fontSize: isBold ? 16 : 14,
          ),
        ),
      ],
    );
  }
}

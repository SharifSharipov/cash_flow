import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeExpensePieChart extends StatelessWidget {
  final double income;
  final double expense;

  const IncomeExpensePieChart({
    super.key,
    required this.income,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    // Absolyut qiymatlardan foydalanamiz
    final absIncome = income.abs();
    final absExpense = expense.abs();

    // Agar kirim bo'lmasa
    if (absIncome == 0) {
      return Center(
        child: Text(
          'Нет данных для отображения',
          style: context.textStyle.bodyBody,
        ),
      );
    }

    // Kirimdan qancha foiz sarflanganini hisoblash
    final balance = absIncome - absExpense;
    final expensePercent = (absExpense / absIncome * 100);
    final balancePercent = (balance / absIncome * 100);

    return Column(
      spacing: he(16),
      children: [
        Text(
          'Распределение доходов',
          style: context.textStyle.bodyBody.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: he(250),
          child: PieChart(
            PieChartData(
              sections: [
                if (absExpense > 0)
                  PieChartSectionData(
                    color: Colors.red.shade400,
                    value: absExpense,
                    title: '${expensePercent.toStringAsFixed(1)}%',
                    radius: 100,
                    titleStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                if (balance > 0)
                  PieChartSectionData(
                    color: Colors.green.shade400,
                    value: balance,
                    title: '${balancePercent.toStringAsFixed(1)}%',
                    radius: 100,
                    titleStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              ],
              sectionsSpace: 2,
              centerSpaceRadius: 40,
              borderData: FlBorderData(show: false),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: wi(24),
          children: [
            _buildLegendItem(
              context,
              color: Colors.red.shade400,
              label: 'Расход',
              value: Formatter.formatCurrency(absExpense),
            ),
            _buildLegendItem(
              context,
              color: Colors.green.shade400,
              label: 'Остаток',
              value: Formatter.formatCurrency(balance),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLegendItem(
    BuildContext context, {
    required Color color,
    required String label,
    required String value,
  }) {
    return Row(
      spacing: wi(8),
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: wi(16),
          height: he(16),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: context.textStyle.bodyBody.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              value,
              style: context.textStyle.bodyBody.copyWith(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

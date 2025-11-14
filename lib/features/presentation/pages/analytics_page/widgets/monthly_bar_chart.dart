import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlyBarChart extends StatelessWidget {
  final Map<String, double> monthlyData;

  const MonthlyBarChart({
    super.key,
    required this.monthlyData,
  });

  @override
  Widget build(BuildContext context) {
    if (monthlyData.isEmpty) {
      return Center(
        child: Text(
          'Нет данных для отображения',
          style: context.textStyle.bodyBody,
        ),
      );
    }

    final sortedEntries = monthlyData.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    // Maksimal qiymatni topish
    final maxValue = sortedEntries.isEmpty
        ? 0.0
        : sortedEntries.map((e) => e.value.abs()).reduce((a, b) => a > b ? a : b);

    // Agar barcha qiymatlar 0 bo'lsa, diagramma ko'rsatilmasin
    if (maxValue == 0) {
      return Center(
        child: Text(
          'Нет данных для отображения',
          style: context.textStyle.bodyBody,
        ),
      );
    }

    return Column(
      spacing: he(16),
      children: [
        Text(
          'Месячная статистика',
          style: context.textStyle.bodyBody.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: he(250),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: maxValue * 1.2,
              minY: 0,
              barTouchData: BarTouchData(
                enabled: true,
                touchTooltipData: BarTouchTooltipData(
                  getTooltipColor: (group) => Colors.blueGrey,
                  tooltipPadding: EdgeInsets.all(wi(8)),
                  tooltipMargin: he(8),
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    final entry = sortedEntries[group.x.toInt()];
                    return BarTooltipItem(
                      '${entry.key}\n',
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: Formatter.formatCurrency(entry.value),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      if (value.toInt() >= sortedEntries.length) {
                        return const SizedBox.shrink();
                      }
                      final monthYear = sortedEntries[value.toInt()].key;
                      // Format: "2024-01" -> "Янв"
                      final parts = monthYear.split('-');
                      if (parts.length == 2) {
                        final month = int.tryParse(parts[1]) ?? 1;
                        final monthNames = [
                          'Янв',
                          'Фев',
                          'Мар',
                          'Апр',
                          'Май',
                          'Июн',
                          'Июл',
                          'Авг',
                          'Сен',
                          'Окт',
                          'Ноя',
                          'Дек'
                        ];
                        return Padding(
                          padding: EdgeInsets.only(top: he(8)),
                          child: Text(
                            monthNames[month - 1],
                            style: context.textStyle.bodyBody.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        );
                      }
                      return Text(
                        monthYear,
                        style: context.textStyle.bodyBody.copyWith(
                          fontSize: 10,
                        ),
                      );
                    },
                    reservedSize: he(30),
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      if (value == 0) return const SizedBox.shrink();
                      // Formatlangan qiymat ko'rsatish
                      final formatted = value >= 1000000
                          ? '${(value / 1000000).toStringAsFixed(1)}M'
                          : value >= 1000
                              ? '${(value / 1000).toStringAsFixed(0)}K'
                              : value.toStringAsFixed(0);
                      return Text(
                        formatted,
                        style: context.textStyle.bodyBody.copyWith(
                          fontSize: 10,
                        ),
                      );
                    },
                    reservedSize: wi(40),
                  ),
                ),
              ),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: maxValue > 0 ? maxValue / 5 : 1,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: context.isDarkMode
                        ? Colors.white.withOpacity(0.1)
                        : Colors.black.withOpacity(0.1),
                    strokeWidth: 1,
                  );
                },
              ),
              borderData: FlBorderData(
                show: true,
                border: Border(
                  left: BorderSide(
                    color: context.isDarkMode
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black.withOpacity(0.2),
                  ),
                  bottom: BorderSide(
                    color: context.isDarkMode
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              barGroups: List.generate(
                sortedEntries.length,
                (index) {
                  final value = sortedEntries[index].value;
                  return BarChartGroupData(
                    x: index,
                    barRods: [
                      BarChartRodData(
                        toY: value.abs(),
                        color: value >= 0
                            ? Colors.green.shade400
                            : Colors.red.shade400,
                        width: wi(16),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(wi(4)),
                          topRight: Radius.circular(wi(4)),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

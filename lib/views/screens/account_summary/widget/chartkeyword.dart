import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartKeyword extends StatelessWidget {
  final Map<String, double> data;

  const ChartKeyword({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PieChart(
            PieChartData(
              sections: data.entries.map((entry) {
                final color = Colors.primaries[
                    data.keys.toList().indexOf(entry.key) %
                        Colors.primaries.length];
                final double percentage = entry.value;

                return PieChartSectionData(
                  color: color,
                  value: percentage,
                  title: '',
                  radius: 100,
                  titleStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  badgeWidget: _buildIndicator(entry.key, percentage, color),
                  badgePositionPercentageOffset: 1.6,
                );
              }).toList(),
              sectionsSpace: 4,
              centerSpaceRadius: 40,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIndicator(String keyword, double percentage, Color color) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 1,
              width: 5,
              color: color,
            ),
            const SizedBox(width: 4),
            Text(
              '$keyword: ${percentage.toStringAsFixed(1)}%',
              style: TextStyle(
                fontSize: 12,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
    );
  }
}

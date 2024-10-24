import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class ChartKeyword extends StatelessWidget {

  const ChartKeyword({super.key});

  @override
  Widget build(BuildContext context) {

    final Map<String, double> keywordData = {
      'Pepsi': 25.0,
      'Coca-Cola': 15.0,
      'Sprite': 12.0,
      'Fanta': 10.0,
      'Mountain Dew': 5.0,
      '7Up': 10.0,
      'Mirinda': 7.0,
      'Dr Pepper': 2.0,
      'Root Beer': 7.0,
      'Sarsi': 7.0,
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        'Top 10 Keywords',
          style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
          height: 200,
          width: 200,
          child: PieChart(
            PieChartData(
              sections: keywordData.entries.map((entry) {
                final color = Colors.primaries[
                    keywordData.keys.toList().indexOf(entry.key) %
                        Colors.primaries.length];
                final double percentage = entry.value;

                return PieChartSectionData(
                  color: color,
                  value: percentage,
                  title: '',
                  radius: 65,
                  titleStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  badgeWidget: _buildIndicator(entry.key, percentage, color),
                  badgePositionPercentageOffset: 1.7,
                );
              }).toList(),
              sectionsSpace: 2,
              centerSpaceRadius: 10,
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

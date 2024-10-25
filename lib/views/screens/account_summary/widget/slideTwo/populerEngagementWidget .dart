import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PopularEngagementWidget extends StatefulWidget {
  const PopularEngagementWidget({super.key});

  @override
  State<PopularEngagementWidget> createState() =>
      _PopularEngagementWidgetState();
}

class _PopularEngagementWidgetState extends State<PopularEngagementWidget> {
  List<_ChartData> data = [
    _ChartData('A', 500, Colors.redAccent),
    _ChartData('B', 300, Colors.red),
    _ChartData('C', 900, Colors.red.shade900),
    _ChartData('D', 700, Colors.indigo),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Posts and Engagements',
                  style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Top 10 postingan dengan Engagements oleh profil yang dicari',
                  style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                // Menampilkan chart sales
                SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis: NumericAxis(
                    minimum: 0,
                    maximum: 1000,
                    interval: 200,
                  ),
                  series: <CartesianSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.category,
                      yValueMapper: (_ChartData data, _) => data.value,
                      pointColorMapper: (_ChartData data, _) => data.color, // Gunakan warna per bar
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Class untuk mendefinisikan data sales dengan warna per bar
class _ChartData {
  _ChartData(this.category, this.value, this.color);
  final String category;
  final double value;
  final Color color;
}

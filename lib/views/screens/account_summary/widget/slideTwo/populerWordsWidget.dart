import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';
import 'package:word_cloud/word_cloud_data.dart';
import 'package:word_cloud/word_cloud_shape.dart';
import 'package:word_cloud/word_cloud_tap.dart';
import 'package:word_cloud/word_cloud_view.dart';

class PopularWordsWidget extends StatefulWidget {
  const PopularWordsWidget({super.key});

  @override
  State<PopularWordsWidget> createState() => _PopularWordsWidgetState();
}

class _PopularWordsWidgetState extends State<PopularWordsWidget> {
  List<Map> word_list = [
    {'word': 'Apple', 'value': 70},
    {'word': 'Samsung', 'value': 60},
    {'word': 'Intel', 'value': 55},
    {'word': 'Tesla', 'value': 50},
    {'word': 'AMD', 'value': 40},
    {'word': 'Google', 'value': 35},
    {'word': 'Qualcom', 'value': 31},
    {'word': 'Netflix', 'value': 27},
    {'word': 'Meta', 'value': 27},
    {'word': 'Amazon', 'value': 26},
  ];

  @override
  Widget build(BuildContext context) {
    WordCloudData wcdata = WordCloudData(data: word_list);

    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Popular Keywords',
              style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              'Top 10 Keywords yang dicari',
              style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WordCloudView(
                  data: wcdata,
                  mapcolor: Colors.white,
                  mapwidth: 350,
                  mapheight: 250,
                  fontWeight: FontWeight.bold,
                  colorlist: [
                    Colors.black,
                    Colors.purpleAccent,
                    Colors.orangeAccent,
                    Colors.redAccent,
                    Colors.blueAccent
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
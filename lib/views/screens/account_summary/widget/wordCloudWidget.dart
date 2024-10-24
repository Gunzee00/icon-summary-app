import 'package:flutter/material.dart';
import 'package:word_cloud/word_cloud_data.dart';
import 'package:word_cloud/word_cloud_shape.dart';
import 'package:word_cloud/word_cloud_view.dart';

class WordCloud extends StatefulWidget {
  const WordCloud({super.key});

  @override
  State<WordCloud> createState() => _WordCloudState();
}

class _WordCloudState extends State<WordCloud> {
 List<Map> word_list = [
    {'word': 'Apple', 'value': 100},
    {'word': 'Samsung', 'value': 60},
    {'word': 'Intel', 'value': 55},
    {'word': 'Tesla', 'value': 50},
    {'word': 'AMD', 'value': 40},
    {'word': 'Google', 'value': 35},
    {'word': 'Qualcomm', 'value': 31},
    {'word': 'Netflix', 'value': 27},
    {'word': 'Meta', 'value': 27},
    {'word': 'Amazon', 'value': 26},
  ];
  

  @override
  Widget build(BuildContext context) {
    WordCloudData wcdata = WordCloudData(data: word_list);

    return Container(
      padding: const EdgeInsets.all(20), // Tambahkan padding di sekitar container
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WordCloudView(
                data: wcdata,
                mapcolor: Colors.white,
                mapwidth: 300,
                mapheight: 300,
                fontWeight: FontWeight.normal, // Ubah fontWeight jika perlu
                shape: WordCloudCircle(radius: 150),
                colorlist: [Colors.black, Colors.redAccent, Colors.indigoAccent],
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

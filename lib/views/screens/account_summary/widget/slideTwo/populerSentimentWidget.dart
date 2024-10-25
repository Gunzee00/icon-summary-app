import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/styles/localColors.dart';
import 'package:icon_sumarry_app/styles/localTextStyle.dart';

class PopularSentimentWidget extends StatefulWidget {
  const PopularSentimentWidget({super.key});

  @override
  State<PopularSentimentWidget> createState() => _PopularSentimentWidgetState();
}

class _PopularSentimentWidgetState extends State<PopularSentimentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sentiment',
            style: LocalTextStyle.textTheme.headlineSmall!.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            'Sentiment mengenai profil yang dicari',
            style: LocalTextStyle.textTheme.bodyMedium!.copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

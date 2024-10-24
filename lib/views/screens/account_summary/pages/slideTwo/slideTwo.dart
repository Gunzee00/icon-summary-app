import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/chartkeyword.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/DailyPosts.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // Data top 10 keyword
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

    // Data Daily Posts by Hour (24 jam)
    final List<int> postsByHour = [
      10,
      12,
      8,
      9,
      20,
      6,
      9,
      15,
      18,
      7,
      15,
      17,
      12,
      8,
      6,
      10,
      22,
      14,
      16,
      9,
      5,
      10,
      11,
      16,
    ];

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Top 10 Keywords',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                // ChartKeyword Widget
                AspectRatio(
                  aspectRatio: 1.5,
                  child: ChartKeyword(data: keywordData),
                ),
                const SizedBox(height: 15),

                const Text(
                  'Daily Posts by Hour',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                AspectRatio(
                  aspectRatio: 1.7,
                  child: DailyPosts(postsByHour: postsByHour),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

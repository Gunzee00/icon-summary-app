import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/chartKeywordWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/dailyPostsWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerEmailWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerEngagementWidget%20.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerPhoneNumberWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerWordsWidget.dart';

import '../../widget/slideTwo/populerSentimentWidget.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PopularWordsWidget(),
            const SizedBox(height: 30),
            PopularEmailWidget(),
            const SizedBox(height: 30),
            PopularPhoneNumberWidget(),
            const SizedBox(height: 30),
            PopularEngagementWidget(),
            const SizedBox(height: 30),
            PopularSentimentWidget(),
            const SizedBox(height: 30),
            ChartKeyword(),
            const SizedBox(height: 30),
            DailyPosts(),
          ],
        ),
      ),
    );
  }
}

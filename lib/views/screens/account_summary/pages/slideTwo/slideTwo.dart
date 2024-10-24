import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerEmailWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerEngagementWidget%20.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerPhoneNumberWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideTwo/populerWordsWidget.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        // Padding dari tepi screen
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
        child: Column(
          children: [
            SizedBox(height: 15),
            PopularWordsWidget(),
            SizedBox(height: 30),
            PopularEmailWidget(),
            SizedBox(height: 30),
            PopularPhoneNumberWidget(),
            SizedBox(height: 30),
            PopularEngagementWidget(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

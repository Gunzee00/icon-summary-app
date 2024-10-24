import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideOne/accountActivitiesWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideOne/popularHastagWIdget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideOne/popularMentionWidget.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/widget/slideOne/profileAccountWidget.dart';

class SlideOne extends StatelessWidget {
  const SlideOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
       child: Column(children: [
          ProfileAccount(),
          SizedBox(height: 30),
          AccountActivities(),
          SizedBox(height: 30),
          PopularHastag(),
          SizedBox(height: 30),
          PopularMention(),
          SizedBox(height: 30),
       ],),
      ),
    );
  }
}

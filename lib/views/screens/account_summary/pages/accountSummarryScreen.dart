import 'package:flutter/material.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/pages/slideOne/slideOne.dart';
import 'package:icon_sumarry_app/views/screens/account_summary/pages/slideTwo/slideTwo.dart';

class AccountSummaryScreen extends StatefulWidget {
  const AccountSummaryScreen({super.key});

  @override
  State<AccountSummaryScreen> createState() => _AccountSummaryScreenState();
}

class _AccountSummaryScreenState extends State<AccountSummaryScreen> {
  @override
  Widget build(BuildContext context) {

    // Ukuran Screen
   return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Account Summary",
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  'Account Data',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Account Activities',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SlideOne(),
            SlideTwo(),
          ],
        ),
      ),
    );
  }
}

import 'package:bank_app_account_activities_screen/constants.dart';
import 'package:bank_app_account_activities_screen/pages/home/components/bank_cards.dart';
import 'package:bank_app_account_activities_screen/pages/home/components/header.dart';
import 'package:bank_app_account_activities_screen/pages/home/components/recent_transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(60))),
          ),
          ListView(
            children: [
              Header(),
              BankCards(),
              LatestTransactions(),
            ],
          ),
        ],
      ),
    );
  }
}

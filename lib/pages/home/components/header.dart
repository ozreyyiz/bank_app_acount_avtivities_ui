import 'package:bank_app_account_activities_screen/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Credit Cards",
            style: kHeaderTextStyle.copyWith(
                color: Colors.white.withOpacity(0.9), fontSize: 30),
          ),
          const SizedBox(height: 5),
          Text(
            "Last 1 month",
            style: kIntroTextStyle,
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}

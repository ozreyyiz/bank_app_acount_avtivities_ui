import 'package:bank_app_account_activities_screen/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: size.height / 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.network(
                "https://cdn.pixabay.com/photo/2016/06/13/15/07/presentation-1454403__480.png"),
          ),
          SizedBox(height: size.height / 15),
          Text("Manage Your Money Easily", style: kHeaderTextStyle),
          SizedBox(height: size.height / 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "You can transfer money quickly and any fee. So you save time. Also you can manage your money easily.",
              style: kIntroTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: size.height / 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.amber[300],
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(25)),
                  ),
                  child: Text(
                    "Let's Start",
                    style: kIntroductionButton,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}

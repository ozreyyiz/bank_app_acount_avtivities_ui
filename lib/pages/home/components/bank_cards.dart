import 'package:bank_app_account_activities_screen/constants.dart';
import 'package:flutter/material.dart';

class BankCards extends StatelessWidget {
  const BankCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: size.width / 20),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: size.height / 4,
              width: size.width / 3.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: kBackgroundColor,
                ),
              ),
            ),
          ),
          Image.network(
            "https://www.mastercard.us/content/dam/public/mastercardcom/na/us/en/consumers/find-a-card/other/card-image-standard-credit-card.png",
            height: size.height / 3,
          )
        ],
      ),
    );
  }
}

import 'package:bank_app_account_activities_screen/constants.dart';
import 'package:flutter/material.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Latest Transactions",
              style: kIntroTextStyle.copyWith(
                color: Colors.black,
              ),
            ),
            Transaction(
              icon: Icons.health_and_safety,
              price: "-\$920,00",
              title: "Brillant Health Insurance",
              subtitle: "Today, 11AM",
              incomeOrExpense: kExpenseTextStyle,
            ),
            Transaction(
              icon: Icons.description,
              title: "Wage",
              subtitle: "Yesterday, 5PM",
              price: "+\$7,800,00",
              incomeOrExpense: kIncomeTextStyle,
            ),
            Transaction(
              icon: Icons.home,
              title: "Home's Rent",
              subtitle: "02.12.2021, 12PM",
              price: "-\1,200,00",
              incomeOrExpense: kExpenseTextStyle,
            ),
            Transaction(
              icon: Icons.credit_card,
              title: "Credit Card Statement",
              subtitle: "29.11.2021, 6PM",
              price: "-\$850,00",
              incomeOrExpense: kExpenseTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class Transaction extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String price;
  final TextStyle incomeOrExpense;

  const Transaction(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.incomeOrExpense})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListTile(
        leading: Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: kIntroTextStyle.copyWith(color: Colors.black, fontSize: 18),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          price,
          style: incomeOrExpense,
        ),
      ),
    );
  }
}

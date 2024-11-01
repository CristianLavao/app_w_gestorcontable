import 'package:flutter/material.dart';
import 'package:app_w_gestorcontable/design/colors.dart';
import 'package:app_w_gestorcontable/design/radius.dart';
import 'package:app_w_gestorcontable/widgets/custom_money_display.dart';

//tipos de SummaryCard
enum TypeRecentTransaction { incomes, spending }

class RecentTransactionCard extends StatelessWidget {
  final TypeRecentTransaction typeRecentTransaction;
  final String description;
  final double amount;
  final String date;
  
  const RecentTransactionCard(
      {super.key,
      required this.typeRecentTransaction,
      required this.description,
      required this.amount,
      required this.date});

  @override
  Widget build(BuildContext context) {
    var incomesIcon = const Icon(
      Icons.keyboard_arrow_up,
      color: WeinFluColors.brandOnSuccessColor,
    );
    var spendingIcon = const Icon(Icons.keyboard_arrow_down,
        color: WeinFluColors.brandOnErrorColor);

    var amounstyleIncome = const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: WeinFluColors.brandDarkColor);

    var amounstyleSpending = const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: WeinFluColors.brandOnErrorColor);

    var amounstyleSmallIncome = const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: WeinFluColors.brandDarkColor);

    var amounstyleSmallSpending = const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: WeinFluColors.brandOnErrorColor);          

    return Container(
      //height: 62,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: WeinFluColors.brandLightColor,
        borderRadius: BorderRadius.all(WeinfluRadius.small),
      ),
       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
            height: 32,
            width: 32,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                color: typeRecentTransaction == TypeRecentTransaction.incomes 
                ? WeinFluColors.brandSuccessColor 
                : WeinFluColors.brandErrorColor,
                borderRadius: const BorderRadius.all(WeinfluRadius.xs),
                border: Border.all(color: WeinFluColors.brandLightColor)),
            child: typeRecentTransaction == TypeRecentTransaction.incomes
                ? incomesIcon
                : spendingIcon),
        Expanded(
          child: Container(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text( 
                description,
                style: TextStyle(
                  color: WeinFluColors.brandDarkColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0,
                  fontFamily: 'RobotoMono'
                )
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: WeinFluColors.brandLightDarkColor,
                    fontSize: 10.0
                  )
                )
                ]
              ),
          )
        ),
        CustomMoneyDisplay(
          amount: typeRecentTransaction == TypeRecentTransaction.incomes
          ? amount
          : amount*-1,
          //padding: const EdgeInsets.only(top: 8, right: 4),
          amountStyle: typeRecentTransaction == TypeRecentTransaction.incomes 
          ? amounstyleIncome 
          : amounstyleSpending,
          amountStyleSmall: typeRecentTransaction == TypeRecentTransaction.incomes 
          ? amounstyleSmallIncome 
          : amounstyleSmallSpending,
        ),
       ]),
    );
  }
}
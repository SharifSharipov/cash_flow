import 'package:cash_flow/core/common/custom_button.dart';
import 'package:cash_flow/core/extension/extension.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:flutter/material.dart';

class MoneyTypeSelectWidgets extends StatelessWidget {
  const MoneyTypeSelectWidgets({
    super.key,
    required this.onTapInsertMoney,
    required this.onTapWithdrawMoney,
    this.label = "",
  });

  final VoidCallback onTapInsertMoney;
  final VoidCallback onTapWithdrawMoney;
  final String label;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: he(10),
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: context.textStyle.bodyBody),
          Row(
            spacing: wi(10),
            children: [
              Expanded(
                flex: 5,
                child: CustomButton(
                  key: const Key('insert_money_button'),
                  text: "Доход",
                  onTap: onTapInsertMoney,
                  textColor: Colors.black,
                ),
              ),
              Expanded(
                flex: 5,
                child: CustomButton(
                  key: const Key('withdraw_money_button'),
                  text: "Расход",
                  onTap: onTapWithdrawMoney,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ],
      );
}
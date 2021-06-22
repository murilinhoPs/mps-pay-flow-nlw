import 'package:flutter/material.dart';
import 'package:pay_flow/src/utils/reg_ex.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class BankSlipCard extends StatelessWidget {
  final String name;
  final String currencyCost;
  final String dueDate;

  BankSlipCard({
    Key? key,
    required this.name,
    required this.currencyCost,
    required this.dueDate,
  }) : super(key: key);

  late final separateCostFromCurrency = currencyCost.split(
    RegEx.removeEmptySpaces,
  );

  late final totalCost = separateCostFromCurrency[1];
  late final currency = separateCostFromCurrency[0];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('open modal');
      },
      borderRadius: BorderRadius.circular(4.0),
      splashColor: AppColors.primaryLight,
      highlightColor: AppColors.grey.withOpacity(0.12),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
          vertical: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.textHeading,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBody,
                    ),
                    children: [
                      TextSpan(text: '$currency '),
                      TextSpan(
                        text: totalCost,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textBody,
                ),
                children: [
                  TextSpan(text: '${Strings.expiresIn} '),
                  TextSpan(
                    text: dueDate,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

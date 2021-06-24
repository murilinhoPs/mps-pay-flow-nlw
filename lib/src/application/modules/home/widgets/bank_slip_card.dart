import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/theme/app_text_styles.dart';
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
                bankSlipName(),
                bankSlipValueInCurrency(),
              ],
            ),
            SizedBox(height: 4.0),
            dueDateText(),
          ],
        ),
      ),
    );
  }

  Widget bankSlipName() => Text(
        name,
        style: AppTextStyles.titleListTileBold,
      );

  Widget bankSlipValueInCurrency() => RichText(
        text: TextSpan(
          text: '$currency ',
          style: AppTextStyles.titleTrailingRegular,
          children: [
            TextSpan(
              text: totalCost,
              style: AppTextStyles.titleTrailingBold,
            ),
          ],
        ),
      );

  Widget dueDateText() => RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.body,
          ),
          text: '${Strings.expiresIn} ',
          children: [
            TextSpan(
              text: dueDate,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
}

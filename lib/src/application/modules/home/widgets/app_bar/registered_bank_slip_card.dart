import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_flow/src/application/theme/theme.dart';
import 'package:pay_flow/src/utils/strings.dart';

class RegisteredBankSlipCard extends StatelessWidget {
  final int bankSlipCount;

  const RegisteredBankSlipCard({
    Key? key,
    required this.bankSlipCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.brandSecondary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: barCodeLogo,
          ),
          SizedBox(width: 24),
          VerticalDivider(
            color: Colors.white.withOpacity(0.32),
            thickness: 1,
            endIndent: 24,
            indent: 24,
          ),
          SizedBox(width: 24),
          Flexible(
            child: cardDescription,
          ),
        ],
      ),
    );
  }

  Widget get barCodeLogo => SvgPicture.asset(
        AppAssets.logo,
        color: Colors.white,
        height: 36,
      );

  Widget get cardDescription => RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14,
            height: 2.0,
            fontWeight: FontWeight.w400,
          ),
          children: [
            TextSpan(text: '${Strings.youHaveRegistered} '),
            TextSpan(
              text: bankSlipCountDetails,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(text: ' $registeredBankSlips'),
          ],
        ),
      );

  String get registeredBankSlips => bankSlipCount == 0
      ? Strings.registeredBankSlipToPay
      : Strings.registeredBankSlipsToPay;

  String get bankSlipCountDetails {
    if (bankSlipCount == 0) return Strings.emptyBankSlip;

    if (bankSlipCount == 1) {
      return '$bankSlipCount ${Strings.bankSlip}';
    }

    return '$bankSlipCount ${Strings.bankSlips}';
  }
}

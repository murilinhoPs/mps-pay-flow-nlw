import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class CreateBankSlipButton extends StatelessWidget {
  final Function()? onPressed;

  const CreateBankSlipButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(56, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        primary: AppColors.primary,
        elevation: 0.8,
      ),
      onPressed: onPressed ?? () {},
      child: SvgPicture.asset(
        AppAssets.addIcon,
      ),
    );
  }
}

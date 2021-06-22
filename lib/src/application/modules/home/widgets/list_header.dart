import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class ListHeader extends StatelessWidget {
  final String title;
  final String titleDetails;

  const ListHeader({
    required this.title,
    required this.titleDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.textHeading,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                titleDetails,
                style: TextStyle(
                  color: AppColors.textBody,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: Colors.black.withOpacity(0.42),
          thickness: 1,
        ),
      ],
    );
  }
}

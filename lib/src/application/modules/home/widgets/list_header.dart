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
                style: AppTextStyles.titleBoldHeading,
              ),
              Text(
                titleDetails,
                style: AppTextStyles.trailingBody,
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

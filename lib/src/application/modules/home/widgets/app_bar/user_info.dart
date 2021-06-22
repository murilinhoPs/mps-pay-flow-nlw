import 'package:flutter/material.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class UserInfo extends StatelessWidget {
  final String? userPicUrl;

  const UserInfo({
    Key? key,
    this.userPicUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            welcomeMessage(),
            payBillsMessage,
          ],
        ),
        profilePic(),
      ],
    );
  }

  Widget welcomeMessage() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 20,
          height: 2.5,
        ),
        children: [
          TextSpan(text: 'Olá, '),
          TextSpan(
            text: 'Murilo',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget get payBillsMessage => Text(
        Strings.keepYourBillsUpToDate,
        style: TextStyle(
          fontSize: 13,
          color: AppColors.textBodyLight,
        ),
      );

  Widget profilePic() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        userPicUrl ?? '',
        width: 60,
        errorBuilder: (context, exception, StackTrace? stackTrace) {
          return Text(
            '😢',
            style: TextStyle(fontSize: 36),
          );
        },
      ),
    );
  }
}

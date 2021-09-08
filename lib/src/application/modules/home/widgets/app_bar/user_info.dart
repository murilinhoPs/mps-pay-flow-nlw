import 'package:flutter/material.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class UserInfo extends StatelessWidget {
  final String? userPicUrl;
  final String userName;

  const UserInfo({
    Key? key,
    this.userPicUrl,
    required this.userName,
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
            payBillsMessage(),
          ],
        ),
        profilePic(),
      ],
    );
  }

  Widget welcomeMessage() => RichText(
        text: TextSpan(
          text: '${Strings.helloWelcome}, ',
          style: AppTextStyles.titleRegularLight.copyWith(height: 2.5),
          children: [
            TextSpan(
              text: userName,
              style: AppTextStyles.titleBoldLight,
            ),
          ],
        ),
      );

  Widget payBillsMessage() => Text(
        Strings.keepYourBillsUpToDate,
        style: AppTextStyles.captionLight,
      );

  Widget profilePic() => ClipRRect(
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

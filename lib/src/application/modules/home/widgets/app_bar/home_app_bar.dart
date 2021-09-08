import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/theme/theme.dart';
import 'package:pay_flow/src/application/modules/home/widgets/app_bar/user_info.dart';
import 'package:pay_flow/src/application/modules/home/widgets/app_bar/registered_bank_slip_card.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showRegistered;
  final double height;
  final int bankSlipCount;

  const HomeAppBar({
    required this.bankSlipCount,
    this.height = 156,
    this.showRegistered = true,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.radialAppBar,
      ),
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
      child: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.only(bottom: showRegistered ? 34.0 : 0.0, top: 8.0),
            child: UserInfo(
              userName: 'Murilo',
              userPicUrl:
                  'https://avatars.githubusercontent.com/u/36513735?v=4',
            ),
          ),
          showRegistered
              ? Align(
                  alignment: Alignment(0.0, 1.6),
                  child: RegisteredBankSlipCard(
                    bankSlipCount: bankSlipCount,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

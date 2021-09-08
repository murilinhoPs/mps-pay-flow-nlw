import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/application/theme/theme.dart';

class BottomNavBar extends StatelessWidget {
  final int navBarCurrentIndex;
  final Function(int) changePage;

  const BottomNavBar({
    Key? key,
    required this.navBarCurrentIndex,
    required this.changePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navBarCurrentIndex,
      onTap: changePage,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.body,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.homeBaseIcon),
          label: '',
          tooltip: Strings.bankSlips,
          activeIcon: SvgPicture.asset(AppAssets.homeActiveIcon),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.fileListBaseIcon,
            color: AppColors.grey,
          ),
          label: '',
          tooltip: Strings.bankStatement,
          activeIcon: SvgPicture.asset(AppAssets.fileListActiveIcon),
        ),
      ],
    );
  }
}

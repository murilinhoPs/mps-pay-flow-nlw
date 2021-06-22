import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/theme/app_colors.dart';

class AppGradients {
  static const radialHome = RadialGradient(
    colors: [
      AppColors.primaryLight,
      AppColors.primary,
    ],
  );

  static const radialAppBar = RadialGradient(
    colors: [
      AppColors.primaryAccent,
      AppColors.primary,
    ],
    stops: [0.03, 0.7],
    radius: 1.3,
    center: Alignment.bottomCenter,
  );

  static const linearWhite = RadialGradient(
    colors: [
      AppColors.primary,
      Colors.white,
    ],
    stops: [
      0.0,
      0.65,
    ],
    radius: 0.25,
  );
}

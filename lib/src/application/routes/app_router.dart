import 'package:flutter/cupertino.dart';
import 'package:pay_flow/src/application/routes/routes_names.dart';
import 'package:pay_flow/src/application/modules/home/home_module.dart';
import 'package:pay_flow/src/application/modules/login/login_module.dart';
import 'package:pay_flow/src/application/routes/pay_flow_page_route.dart';
import 'package:pay_flow/src/application/modules/scan_bar_code/scan_bar_code_module.dart';
import 'package:pay_flow/src/application/modules/create_bank_slip/create_bank_slip_module.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.homePage:
        return PayFlowPageRoute(
          route: RoutesNames.homePage,
          builder: (context) => HomeModule(),
        );

      case RoutesNames.loginPage:
        return PayFlowPageRoute(
          route: RoutesNames.loginPage,
          builder: (context) => LoginModule(),
        );
      case RoutesNames.scanBarCode:
        return PayFlowPageRoute(
          route: RoutesNames.scanBarCode,
          builder: (context) => ScanBarCodeModule(),
        );
      case RoutesNames.createBankSlip:
        return PayFlowPageRoute(
          route: RoutesNames.createBankSlip,
          builder: (context) => CreateBankSlipModule(),
        );
      default:
        return PayFlowPageRoute(
          route: RoutesNames.homePage,
          builder: (context) => HomeModule(),
        );
    }
  }
}

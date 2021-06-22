import 'package:flutter/cupertino.dart';

class PayFlowPageRoute extends CupertinoPageRoute {
  final String route;
  final RouteSettings? routeSettings;
  final Widget Function(BuildContext) builder;

  PayFlowPageRoute({
    this.routeSettings,
    required this.route,
    required this.builder,
  }) : super(builder: builder, settings: routeSettings);
}

import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/core/routes/routes.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({
    required this.title,
  });

  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white.withOpacity(0.8),
        ),
      ),
      initialRoute: RoutesNames.loginPage,
      onGenerateRoute: AppRouter.generateRoutes,
      scaffoldMessengerKey: scaffoldKey,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_flow/src/application/theme/theme.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:pay_flow/src/application/core/routes/routes.dart';
import 'package:pay_flow/src/application/theme/app_gradients.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 315,
            decoration: BoxDecoration(
              gradient: AppGradients.radialHome,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.person,
                    height: 315,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppAssets.logo,
                      height: 44,
                    ),
                  ),
                  Text(
                    Strings.organizeBankSlips,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.titleHome,
                  ),
                  SizedBox(height: 40),
                  SignInButton(
                    Buttons.Google,
                    text: Strings.signInWithGoogle,
                    onPressed: () {
                      print('google login');
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesNames.homePage,
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

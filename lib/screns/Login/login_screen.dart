import 'package:flutter/material.dart';
import 'package:flutter_web_example_1/responsive/commin_soon_screen.dart';
import 'package:flutter_web_example_1/responsive/responsive_view.dart';
import 'package:flutter_web_example_1/screns/Login/login_desktop.dart';
import 'package:flutter_web_example_1/screns/Login/login_mobile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const SingleChildScrollView(
          child: ResponsiveLayout(
              mobile: LoginMobileScreen(), desktop: LoginDesktopWidget()),
        ),
      )),
    );
  }
}

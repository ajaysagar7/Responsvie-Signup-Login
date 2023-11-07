import 'package:flutter/material.dart';
import 'package:flutter_web_example_1/responsive/commin_soon_screen.dart';
import 'package:flutter_web_example_1/responsive/responsive_view.dart';
import 'package:flutter_web_example_1/screns/Signup/views/signup_desktop.dart';
import 'package:flutter_web_example_1/screns/Signup/views/signup_mobile.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            desktop: SignupDesktopLayout(),
            mobile: SignupMobileLayout(),
          ),
        ),
      )),
    );
  }
}

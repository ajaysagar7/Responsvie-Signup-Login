import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/screns/Signup/views/signup_mobile.dart';

class SignupDesktopLayout extends StatefulWidget {
  const SignupDesktopLayout({super.key});

  @override
  State<SignupDesktopLayout> createState() => _SignupDesktopLayoutState();
}

class _SignupDesktopLayoutState extends State<SignupDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SignupTopImageWidget()),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 0.45.sw,
              child: SignupFormWidget(),
            )
          ],
        ))
      ],
    );
  }
}

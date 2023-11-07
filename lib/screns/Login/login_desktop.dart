import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/screns/Login/login_form.dart';
import 'package:flutter_web_example_1/screns/Login/widgets/login_top_image.dart';

class LoginDesktopWidget extends StatelessWidget {
  const LoginDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: LoginTopImageWidget()),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 0.45.sw,
              child: LoginFormWidget(),
            )
          ],
        ))
      ],
    );
  }
}

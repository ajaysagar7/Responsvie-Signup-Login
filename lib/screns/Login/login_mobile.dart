import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/screns/Login/login_form.dart';
import 'package:flutter_web_example_1/screns/Login/viewmodel/login_view_model.dart';
import 'package:flutter_web_example_1/screns/Login/widgets/login_top_image.dart';
import 'package:flutter_web_example_1/src/extensions/padding_extension.dart';

class LoginMobileScreen extends StatefulWidget {

  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {

  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginTopImageWidget(),
          // LOGIN FORM
          LoginFormWidget().withSymetricPadding(horizontalPadding: 20.w),
          // LOGIN BUTTON
        ],
      ),
    );
  }
}

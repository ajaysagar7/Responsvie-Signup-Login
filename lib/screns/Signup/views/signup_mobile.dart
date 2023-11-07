import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_example_1/screns/Login/login_screen.dart';
import 'package:flutter_web_example_1/src/extensions/padding_extension.dart';

class SignupMobileLayout extends StatefulWidget {
  const SignupMobileLayout({super.key});

  @override
  State<SignupMobileLayout> createState() => _SignupMobileLayoutState();
}

class _SignupMobileLayoutState extends State<SignupMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignupTopImageWidget(),
        SignupFormWidget(),
      ],
    );
  }
}

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIconColor: Colors.purple,
            prefixIcon: const Padding(
                padding: EdgeInsets.all(16), child: Icon(Icons.email_outlined)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        20.verticalSpace,
        TextFormField(
          decoration: InputDecoration(
            hintText: "Password",
            prefixIconColor: Colors.purple,
            prefixIcon: const Padding(
                padding: EdgeInsets.all(16), child: Icon(Icons.lock)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        20.verticalSpace,
        ElevatedButton(
          onPressed: () {},
          child: Text("SIGNUP"),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 0.08.sh),
            primary: Colors.purple,
            shape: StadiumBorder(),
          ),
        ),
        20.verticalSpace,
        RichText(
          text: TextSpan(
            text: "Already have an account ? ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple.withOpacity(0.7),
            ),
            children: [
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                text: "Login",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ).withSymetricPadding(horizontalPadding: 20.w);
  }
}

class SignupTopImageWidget extends StatelessWidget {
  const SignupTopImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("SIGNUP"),
        20.verticalSpace,
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/signup.svg",
                // width: 0.5.sw,
              ),
            ),
            Spacer(),
          ],
        ),
        20.verticalSpace,
      ],
    ).withSymetricPadding(horizontalPadding: 20.w);
  }
}

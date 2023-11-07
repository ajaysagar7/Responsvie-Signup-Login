import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_example_1/constants.dart';
import 'package:flutter_web_example_1/screns/Signup/views/singup_screen.dart';
import 'package:flutter_web_example_1/widgets/textfields/custom_textfields_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.purple,
          onSaved: (email) {},
          decoration: InputDecoration(
            hintText: "Your email",
            prefixIcon: Padding(
              padding: kDefaultPadding,
              child: Icon(Icons.person),
            ),
          ),
        ),
        20.verticalSpace,
        // CustomTextFieldWidget(
        //   textEditingController: TextEditingController(),
        //   onChanged: (val) {},
        //   hintText: "Enter password",
        //   labelText: "Password",
        //   iconData: Icons.lock,
        // ),
        TextFormField(
          textInputAction: TextInputAction.done,
          obscureText: true,
          cursorColor: Colors.purple,
          decoration: InputDecoration(
            hintText: "Your password",
            prefixIcon: Padding(
              padding: EdgeInsets.all(16),
              child: Icon(Icons.lock),
            ),
          ),
        ),
        20.verticalSpace,
        FractionallySizedBox(
          widthFactor: 1,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 0.08.sh),
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white),
            child: Text("LOGIN"),
          ),
        ),
        20.verticalSpace,
        RichText(
            text: TextSpan(
                text: "Don't have an Account ? ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.purple.withOpacity(0.7),
                ),
                children: [
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignupScreen()));
                    },
                  text: "Sign Up",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.purple,
                      fontWeight: FontWeight.w600))
            ]))
      ],
    );
  }
}

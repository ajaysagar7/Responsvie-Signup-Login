import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  disposeAllControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  void login() {
    if (emailController.text.isNotEmpty & passwordController.text.isNotEmpty) {
      Fluttertoast.showToast(msg: "Login Success");
    } else {
      Fluttertoast.showToast(msg: "Please enter email and password");
    }
  }
}

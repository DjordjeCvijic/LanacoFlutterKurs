import 'dart:developer';

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  //login kredencijali
  final String email = "test@gmail.com";
  final String password = "test123";

  final TextEditingController emailController =
      TextEditingController(text: "test@gmail.com");
  final TextEditingController passwordController =
      TextEditingController(text: "test123");

  bool buttonClicable = true;

  void printData() {
    String unesenEmail = emailController.text;
    String unesenaLozinka = passwordController.text;
    log("Uneseni kredencijali: $unesenEmail $unesenaLozinka");
    //print("Izvrsena metoda");
  }

  bool login() {
    bool result;
    if (emailController.text == email && passwordController.text == password) {
      result = true;
    } else {
      result = false;
    }
    return result;
  }

  Future<void> doSomething() async {
    buttonClicable = false;
    await Future.delayed(const Duration(seconds: 5));
    buttonClicable = true;
  }
}

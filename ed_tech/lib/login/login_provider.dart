import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final String email = "test@gmail.com";
  final String password = "test123";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool buttonClicable = true;

  void printData() {
    String unesenEmail = emailController.text;
    String unesenaLozinka = passwordController.text;
    print("Uneseni kredencijali: " + unesenEmail + " " + unesenaLozinka);
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
    await Future.delayed(Duration(seconds: 5));
    buttonClicable = true;
  }
}
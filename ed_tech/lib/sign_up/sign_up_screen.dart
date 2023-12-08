import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Sign up screen"),
            Image.asset(
              CustomImages.loginImage,
              height: 253,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '/helpers/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Sign up screen"),
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

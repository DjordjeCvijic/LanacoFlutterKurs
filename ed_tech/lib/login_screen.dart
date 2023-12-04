import 'package:ed_tech/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 52, 16, 30),
          child: Column(
            children: [
              Image.asset(
                CustomImages.loginImage,
                height: 253,
              ),
              Gap(16),
              Text(
                "Log in",
                style: textTheme.headingH4,
              ),
              Container(
                height: 50,
                width: 50,
                color: CustomColors.error,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import '/helpers/constants.dart';
import '/screens/sign_up_screen.dart';

import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 52),
              Image.asset(
                CustomImages.kidsSitting,
                height: 253,
              ),
              const SizedBox(height: 16),
              Text(
                'Log in',
                style: textTheme.headingH4,
              ),
              const SizedBox(height: 8),
              Text(
                'Log in with social networks',
                style: textTheme.paragraphMedium,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(CustomIcons.facebook),
                  const Gap(12),
                  SvgPicture.asset(CustomIcons.instagram),
                  const Gap(12),
                  SvgPicture.asset(CustomIcons.google),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                style: const TextStyle(),
                onChanged: (text) {
                  log('INPUT: $text');
                },
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                style: const TextStyle(),
                onChanged: (text) {
                  log('INPUT: $text');
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Forgot Password?',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: CustomColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(100, 56),
                  ),
                  onPressed: () {
                    //
                  },
                  child: Text(
                    'Log in',
                    style: textTheme.buttonMedium.copyWith(
                      color: CustomColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  //NAVIGACIJA NA SIGN UP
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return const SignUpScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: textTheme.buttonSmall.copyWith(
                    color: CustomColors.darkGray,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

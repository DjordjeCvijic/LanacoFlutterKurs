import 'dart:developer';

import 'package:ed_tech/app_navigation/app_navigator.dart';
import 'package:ed_tech/app_navigation/app_navigator_provider.dart';
import 'package:ed_tech/login/login_provider.dart';
import 'package:ed_tech/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '/helpers/constants.dart';
import '/widgets/my_button.dart';
import '/widgets/my_text_button.dart';
import '/widgets/password_input_field.dart';
import '/widgets/simple_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 52, 16, 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  CustomImages.loginImage,
                  height: 253,
                ),
                const Gap(16),
                Text(
                  "Log in",
                  style: textTheme.headingH4,
                ),
                const Gap(8),
                Text(
                  "Login with social networks",
                  style: textTheme.paragraphMedium
                      .copyWith(color: CustomColors.darkGray),
                  //na ovaj nacin dodefinisemo stil promjenom boje teksta
                ),
                const Gap(8),
                InkWell(
                  child: SvgPicture.asset(CustomIcons.facebookLogin),
                  onTap: () {
                    //Sve sto navedemo u viticastim zagradama bice izvrseno kada se klikne na ikoci
                    if (loginProvider.buttonClicable) {
                      loginProvider.doSomething();
                      log("######PRESS");
                    } else {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Podaci se obradjuju"),
                        ),
                      );
                    }
                  },
                ),
                const Gap(20),
                SimpleInputField(
                  hintText: "Email",
                  myController: loginProvider.emailController,
                ),
                const Gap(16),
                PasswordInputField(
                    myController: loginProvider.passwordController),
                const Gap(16),
                MyTextButton(
                  buttonText: 'Forgot Password?',
                  onButtonPress: () {
                    log("Click forgot password");
                  },
                ),
                const Gap(16),
                MyButton(
                  buttonText: 'Log in',
                  onButtonPress: () {
                    bool successLogin = loginProvider.login();
                    if (successLogin) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider(
                            create: (context) => AppNavigatorProvider(),
                            child: AppNavigator(),
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Kredencijali nisu validni"),
                        ),
                      );
                    }
                  },
                ),
                const Gap(16),
                MyTextButton(
                  buttonText: 'Sign up',
                  onButtonPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('NOVI EKRAN'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}

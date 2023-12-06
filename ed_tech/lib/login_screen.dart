import 'package:ed_tech/helpers/constants.dart';
import 'package:ed_tech/widgets/my_button.dart';
import 'package:ed_tech/widgets/my_text_button.dart';
import 'package:ed_tech/widgets/password_input_field.dart';
import 'package:ed_tech/widgets/simple_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: SingleChildScrollView(
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
                Gap(8),
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
                      print("facebook login");
                    }),
                const Gap(20),
                SimpleInputField(hintText: "Email"),
                const Gap(16),
                PasswordInputField(),
                const Gap(16),
                MyTextButton(
                  buttonText: 'Forgot Password?',
                  onButtonPress: () {
                    print("Click forgot password");
                  },
                ),
                const Gap(16),
                MyButton(
                  buttonText: 'Log in',
                  onButtonPress: () {
                    print("Kliknuli smo na dugme");
                  },
                ),
                const Gap(16),
                MyTextButton(
                  buttonText: 'Sign up',
                  onButtonPress: () {
                    print("Click Sign up");
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

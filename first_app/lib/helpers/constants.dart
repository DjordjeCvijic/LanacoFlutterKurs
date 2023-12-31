import 'package:flutter/material.dart';

class CustomIcons {
  static const String email = 'assets/icons/email.svg';
  static const String gender = 'assets/icons/gender.svg';
  static const String phone = 'assets/icons/phone.svg';
  static const String facebook = 'assets/icons/facebook.svg';
  static const String instagram = 'assets/icons/instagram.svg';
  static const String google = 'assets/icons/google.svg';
}

class CustomImages {
  static const String kidsSitting = 'assets/images/kids_sitting.png';
}

class CustomColors {
  static const Color dark = Color(0xff3C3A36);
  static const Color darkGray = Color(0xff78746D);
  static const Color gray = Color(0xffBEBAB3);
  static const Color lightGray = Color(0xffF8F2EE);
  static const Color white = Color(0xffFFFFFF);
  static const Color primary = Color(0xffE3562A);
  static const Color secondary = Color(0xff65AAEA);
  static const Color success = Color(0xff5BA092);
  static const Color error = Color(0xffEF4949);
  static const Color warning = Color(0xffF2A03F);
}

extension CustomTextStyles on TextTheme {
  TextStyle get buttonSmall => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 16 / 14,
      );

  TextStyle get buttonMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 18 / 16,
      );

  TextStyle get buttonLarge => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 22 / 18,
        letterSpacing: -0.5,
      );

  TextStyle get headingH4 => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
        height: 32 / 24,
      );

  TextStyle get paragraphMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 21 / 14,
        leadingDistribution: TextLeadingDistribution.even,
      );
}

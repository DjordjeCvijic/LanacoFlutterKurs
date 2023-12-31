import 'package:flutter/material.dart';

class CustomImages {
  static const String loginImage = 'assets/images/login_img.png';
  static const String profilePhoto = 'assets/images/profile_photo.png';
}

class CustomIcons {
  static const String facebookLogin = 'assets/icons/facebook_login.svg';
  static const String showPasswordIcon = 'assets/icons/show_password_icon.svg';
  static const String coursesNavigationIcon =
      'assets/icons/courses_navigation_icon.svg';
  static const String profileNavigationIcon =
      'assets/icons/profile_navigation_icon.svg';
  static const String settingNavigationIcon =
      'assets/icons/settings_navigation_icon.svg';
  static const String backButton = 'assets/icons/back_button.svg';
  static const String profileIcon = 'assets/icons/profile_icon.svg';
  static const String rightArrowIcon = 'assets/icons/right_arrow_icon.svg';
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

  TextStyle get headingH3 => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: -1,
        height: 42 / 32,
      );

  TextStyle get paragraphMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 21 / 14,
        // leadingDistribution: TextLeadingDistribution.even,
      );
  TextStyle get paragraphLarge => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 26 / 16,
        // leadingDistribution: TextLeadingDistribution.even,
      );
}

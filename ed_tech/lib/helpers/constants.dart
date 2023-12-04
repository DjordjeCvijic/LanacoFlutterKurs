import 'package:flutter/material.dart';

class CustomImages {
  static const String loginImage = 'assets/images/login_img.png';
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
  TextStyle get headingH4 => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 32 / 24,
      );
}

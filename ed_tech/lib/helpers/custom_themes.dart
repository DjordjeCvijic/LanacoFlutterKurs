import 'package:flutter/material.dart';

class CustomThemes {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade100,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber,
      elevation: 6,
      foregroundColor: Colors.grey.shade200,
    ),
    chipTheme: ChipThemeData(
      color: MaterialStateProperty.all(Colors.amber),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade800,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      elevation: 6,
      foregroundColor: Colors.amber,
    ),
    chipTheme: ChipThemeData(
      color: MaterialStateProperty.all(Colors.deepPurple),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(),
    ),
  );
}

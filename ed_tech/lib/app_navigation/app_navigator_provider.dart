import 'package:flutter/material.dart';

class AppNavigatorProvider extends ChangeNotifier {
  int currentScreenIndex = 0;

  void changeScreen(int index) {
    currentScreenIndex = index;

    notifyListeners();
  }
}

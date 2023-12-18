import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettignProvider extends ChangeNotifier {
  String name = "";

  final newNameController = TextEditingController();

  Future<void> fetchDate() async {
    await Future.delayed(const Duration(seconds: 2));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    name = prefs.getString("name_key") ?? "Ime nije uneseno";
  }

  void saveNewName() async {
    name = newNameController.text;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name_key", name);
    notifyListeners();
  }
}

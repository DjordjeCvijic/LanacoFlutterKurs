import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  var _inLightMode = true;
  var _language = 'en';

  String get language => _language;
  bool get inLightMode => _inLightMode;

  set language(String value) {
    _language = value;
    SharedPreferences.getInstance().then((pref) {
      pref.setString('language', value);
    });

    notifyListeners();
  }

  set inLightMode(bool value) {
    _inLightMode = value;
    SharedPreferences.getInstance().then((pref) {
      pref.setBool('inLightMode', value);
    });

    notifyListeners();
  }

  void getPreferences() async {
    var pref = await SharedPreferences.getInstance();

    //theme
    var themeValue = pref.getBool('inLightMode');
    if (themeValue != null) _inLightMode = themeValue;

    //language
    var languageValue = pref.getString('language');
    if (languageValue != null) _language = languageValue;

    notifyListeners();
  }
}



/*

'inLightMode':true,
'language':'en'

 */

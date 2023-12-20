import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  var _inLightMode = true;

  bool get inLightMode => _inLightMode;

  set inLightMode(bool value) {
    _inLightMode = value;
    SharedPreferences.getInstance().then((pref) {
      pref.setBool('inLightMode', value);
    });

    notifyListeners();
  }

  void getPreferences() async {
    var pref = await SharedPreferences.getInstance();
    var value = pref.getBool('inLightMode');
    if (value == null) return;
    _inLightMode = value;
    notifyListeners();
  }
}



/*

'inLightMode':true,
'language':'en'

 */

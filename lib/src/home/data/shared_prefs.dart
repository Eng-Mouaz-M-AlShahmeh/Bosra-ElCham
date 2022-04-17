// Developed by Eng Mouaz M Shahmeh 2022
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  // login shared preferences
  Future<bool?> getLoginPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? value = prefs.getBool('loggedInPref');
    return value;
  }

  Future<bool> setLoginPref() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('loggedInPref', true);
    return true;
  }

  Future<bool> setLogoutPref() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('loggedInPref');
    return false;
  }
}

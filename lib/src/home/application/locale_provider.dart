// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/data/shared_prefs.dart';
import 'package:bosra_elcham/src/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = const Locale('ar', 'SA');
  Locale? get locale => _locale;
  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  // theme states
  ThemeMode? _themeMode = ThemeMode.light;
  ThemeMode? get themeMode => _themeMode;
  void setThemeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }
  // end theme states

  // login states
  bool? _isLoggedIn;
  bool? get isLoggedIn => _isLoggedIn;
  void getLoggedInPref() async {
    SharedPrefs prefs = SharedPrefs();
    _isLoggedIn = await prefs.getLoginPrefs();
    notifyListeners();
  }

  void setLoggedInPref() async {
    SharedPrefs prefs = SharedPrefs();
    _isLoggedIn = await prefs.setLoginPref();
    notifyListeners();
  }

  void setLogoutPref() async {
    SharedPrefs prefs = SharedPrefs();
    _isLoggedIn = await prefs.setLogoutPref();
    notifyListeners();
  }
// end login states
}

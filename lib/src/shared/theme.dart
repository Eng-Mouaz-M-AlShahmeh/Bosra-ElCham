// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(AppStrings.appLightColor),
  backgroundColor: const Color(AppStrings.appLightBGColor),
  focusColor: const Color(AppStrings.appFocusColor),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h1,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline2: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h2,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline3: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h3,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline4: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h4,
      color: Color(AppStrings.appLightBGColor),
    ),
    headline5: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h5,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline6: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h6,
      color: Color(AppStrings.appRedColor),
    ),
  ),
);

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(AppStrings.appDarkColor),
  backgroundColor: const Color(AppStrings.appDarkBGColor),
  focusColor: const Color(AppStrings.appFocusColor),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h1,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline2: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h2,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline3: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h3,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline4: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h4,
      color: Color(AppStrings.appDarkBGColor),
    ),
    headline5: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h5,
      color: Color(AppStrings.appHeaderColor),
    ),
    headline6: TextStyle(
      fontFamily: AppStrings.fontName,
      fontSize: AppStrings.h6,
      color: Color(AppStrings.appRedColor),
    ),
  ),
);

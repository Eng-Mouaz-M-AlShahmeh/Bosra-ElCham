// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:flutter/material.dart';

class MyDecoration {
  InputDecoration inputDecoration(BuildContext context) {
    var theme = Theme.of(context);

    return InputDecoration(
      labelStyle: theme.textTheme.headline5,
      errorStyle: theme.textTheme.headline6,
      hintStyle: theme.textTheme.headline5,
      fillColor: theme.backgroundColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppStrings.r1)),
        borderSide: BorderSide(
          color: theme.backgroundColor,
          width: AppStrings.w1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppStrings.r1)),
        borderSide: BorderSide(
          color: theme.primaryColor,
          width: AppStrings.w1,
        ),
      ),
    );
  }

  ButtonStyle buttonSubmit(BuildContext context) {
    var theme = Theme.of(context);

    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppStrings.r2))),
      foregroundColor: MaterialStateProperty.all(theme.backgroundColor),
      backgroundColor: MaterialStateProperty.all(theme.primaryColor),
      textStyle: MaterialStateProperty.all(theme.textTheme.headline4),
    );
  }

  ButtonStyle buttonCancel(BuildContext context) {
    var theme = Theme.of(context);

    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppStrings.r2))),
      foregroundColor: MaterialStateProperty.all(theme.backgroundColor),
      backgroundColor: MaterialStateProperty.all(theme.focusColor),
      textStyle: MaterialStateProperty.all(theme.textTheme.headline4),
    );
  }

  double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  ThemeData theme(BuildContext context) => Theme.of(context);
}

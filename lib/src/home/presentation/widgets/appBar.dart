// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/application/locale_provider.dart';
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const MyAppBar({Key? key, required this.scaffoldKey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locale = context.watch<LocaleProvider>();
    MyDecoration decoration = MyDecoration();

    return AppBar(
      title: Text(
        AppStrings.appTitle,
        style: decoration.theme(context).textTheme.headline4,
      ),
      backgroundColor: decoration.theme(context).primaryColor,
      leading: InkWell(
        child: Icon(
          Icons.menu,
          size: decoration.theme(context).textTheme.headline2!.fontSize,
          color: decoration.theme(context).backgroundColor,
        ),
        onTap: () => scaffoldKey.currentState!.openDrawer(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: locale.themeMode == ThemeMode.light
                ? Icon(
                    Icons.nightlight_round,
                    size: decoration.theme(context).textTheme.headline2!.fontSize,
                    color: decoration.theme(context).backgroundColor,
                  )
                : Icon(
                    Icons.wb_sunny_rounded,
                    size: decoration.theme(context).textTheme.headline2!.fontSize,
                    color: decoration.theme(context).backgroundColor,
                  ),
            onTap: () => locale.themeMode == ThemeMode.light
                ? locale.setThemeMode(ThemeMode.dark)
                : locale.setThemeMode(ThemeMode.light),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: locale.locale == const Locale('ar', 'SA')
                ? Icon(
              Icons.g_translate_outlined,
              size: decoration.theme(context).textTheme.headline2!.fontSize,
              color: decoration.theme(context).backgroundColor,
            )
                : Icon(
              Icons.translate_outlined,
              size: decoration.theme(context).textTheme.headline2!.fontSize,
              color: decoration.theme(context).backgroundColor,
            ),
            onTap: () => locale.locale == const Locale('ar', 'SA')
                ? locale.setLocale(const Locale('en', 'US'))
                : locale.setLocale(const Locale('ar', 'SA')),
          ),
        ),
      ],
    );
  }
}

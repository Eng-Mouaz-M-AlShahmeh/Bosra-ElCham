// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyDecoration decoration = MyDecoration();
    var routeName = ModalRoute.of(context)!.settings.name;

    return Container(
      color: decoration.theme(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Icon(
                Icons.home,
                size: routeName == 'home' ? decoration.theme(context).textTheme.headline1!.fontSize : decoration.theme(context).textTheme.headline2!.fontSize,
                color: routeName == 'home' ? decoration.theme(context).focusColor : decoration.theme(context).backgroundColor,
              ),
              onTap: () => context.go('/'),
            ),
            InkWell(
              child: Icon(
                Icons.info,
                size: routeName == 'about' ? decoration.theme(context).textTheme.headline1!.fontSize : decoration.theme(context).textTheme.headline2!.fontSize,
                color: routeName == 'about' ? decoration.theme(context).focusColor : decoration.theme(context).backgroundColor,
              ),
              onTap: () => context.go('/about'),
            ),
            InkWell(
              child: Icon(
                Icons.settings,
                size: routeName == 'settings' ? decoration.theme(context).textTheme.headline1!.fontSize : decoration.theme(context).textTheme.headline2!.fontSize,
                color: routeName == 'settings' ? decoration.theme(context).focusColor : decoration.theme(context).backgroundColor,
              ),
              onTap: () => context.go('/settings'),
            ),
          ],
        ),
      ),
    );
  }
}

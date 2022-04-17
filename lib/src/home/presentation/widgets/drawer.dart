// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyDecoration decoration = MyDecoration();
    // var translate = AppLocalizations.of(context)!;

    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => context.go('/account'),
          child: Container(
            color: decoration.theme(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Text('ABC',
                        style: decoration
                            .theme(context)
                            .textTheme
                            .headline4!
                            .copyWith(
                                color: decoration.theme(context).primaryColor)),
                    backgroundColor: decoration.theme(context).backgroundColor,
                    radius: 40,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'John Doe',
                        style: decoration
                            .theme(context)
                            .textTheme
                            .headline4!
                            .copyWith(
                                color:
                                    decoration.theme(context).backgroundColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      size: decoration
                          .theme(context)
                          .textTheme
                          .headline2!
                          .fontSize,
                      color: decoration.theme(context).primaryColor,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   translate.home,
                    //   style: decoration.theme(context).textTheme.headline4!
                    //       .copyWith(color: decoration.theme(context).primaryColor),
                    // ),
                  ],
                ),
                onTap: () => context.go('/'),
              ),
              // const SizedBox(height: 15),
              const Divider(height: 10),

              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info,
                      size: decoration
                          .theme(context)
                          .textTheme
                          .headline2!
                          .fontSize,
                      color: decoration.theme(context).primaryColor,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   translate.about,
                    //   style: decoration.theme(context).textTheme.headline4!
                    //       .copyWith(color: decoration.theme(context).primaryColor),
                    // ),
                  ],
                ),
                onTap: () => context.go('/about'),
              ),
              // const SizedBox(height: 15),
              const Divider(height: 10),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu_book_outlined,
                      size: decoration
                          .theme(context)
                          .textTheme
                          .headline2!
                          .fontSize,
                      color: decoration.theme(context).primaryColor,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   translate.posts,
                    //   style: decoration.theme(context).textTheme.headline4!
                    //       .copyWith(color: decoration.theme(context).primaryColor),
                    // ),
                  ],
                ),
                onTap: () => context.go('/posts'),
              ),
              // const SizedBox(height: 15),
              const Divider(height: 10),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.settings,
                      size: decoration
                          .theme(context)
                          .textTheme
                          .headline2!
                          .fontSize,
                      color: decoration.theme(context).primaryColor,
                    ),
                    const SizedBox(width: 10),
                    // Text(
                    //   translate.settings,
                    //   style: decoration.theme(context).textTheme.headline4!
                    //       .copyWith(color: decoration.theme(context).primaryColor),
                    // ),
                  ],
                ),
                onTap: () => context.go('/settings'),
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),
      ],
    ));
  }
}

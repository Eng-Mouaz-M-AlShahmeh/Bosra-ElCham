// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyDecoration decoration = MyDecoration();
    Future<Function()>.delayed(const Duration(seconds: 2), () {
      context.go('/');
      return () => false;
    });

    return Scaffold(
      body: Container(
        width: decoration.screenWidth(context),
        height: decoration.screenHeight(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/splash.jpg'),
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
          ),
        ),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              FlickerAnimatedText(
                AppStrings.appTitle,
                textStyle: decoration
                    .theme(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: decoration.theme(context).backgroundColor),
                speed: const Duration(milliseconds: 2000),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 70),
          ),
        ),
      ),
    );
  }
}

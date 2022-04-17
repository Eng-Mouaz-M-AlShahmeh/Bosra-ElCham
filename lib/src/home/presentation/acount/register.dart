// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyDecoration decoration = MyDecoration();
    // var translate = AppLocalizations.of(context)!;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.appTitle,
                style: decoration
                    .theme(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: decoration.theme(context).backgroundColor),
              ),
              SizedBox(
                height: decoration.screenHeight(context) * 0.05,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextFormField(
              //     decoration: decoration.inputDecoration(context).copyWith(
              //       labelText: translate.username,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextFormField(
              //     decoration: decoration.inputDecoration(context).copyWith(
              //       labelText: translate.email,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextFormField(
              //     decoration: decoration.inputDecoration(context).copyWith(
              //       labelText: translate.password,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextFormField(
              //     decoration: decoration.inputDecoration(context).copyWith(
              //       labelText: translate.confirmPassword,
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: OutlinedButton(
              //     onPressed: () async {},
              //     style: decoration.buttonSubmit(context),
              //     child: Center(
              //         child: Padding(
              //           padding: const EdgeInsets.all(20.0),
              //           child: Text(
              //             translate.register,
              //             style: decoration.theme(context).textTheme.headline4,
              //           ),
              //         )),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   translate.haveAccount,
                  //   style: decoration
                  //       .theme(context)
                  //       .textTheme
                  //       .headline4!
                  //       .copyWith(color: decoration.theme(context).backgroundColor),
                  // ),
                  SizedBox(
                    width: decoration.screenWidth(context) * 0.05,
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     /// TODO: link firebase register
                  //     context.go('/login');
                  //   },
                  //   child: Text(
                  //     translate.login,
                  //     style: decoration
                  //         .theme(context)
                  //         .textTheme
                  //         .headline4!
                  //         .copyWith(color: decoration.theme(context).primaryColor),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/application/locale_provider.dart';
import 'package:bosra_elcham/src/shared/app_strings.dart';
import 'package:bosra_elcham/src/shared/l10n/l10n.dart';
import 'package:bosra_elcham/src/shared/providers.dart';
import 'package:bosra_elcham/src/shared/routes.dart';
import 'package:bosra_elcham/src/shared/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: AppStrings.firebaseApiKey,
      appId: AppStrings.firebaseAppId,
      messagingSenderId: AppStrings.firebaseMessagingSenderId,
      projectId: AppStrings.firebaseProjectId,
      authDomain: AppStrings.firebaseAuthDomain,
      storageBucket: AppStrings.firebaseStorageBucket,
      measurementId: AppStrings.firebaseMeasurementId,
      iosBundleId: AppStrings.firebaseIosBundleId,
      iosClientId: AppStrings.firebaseIosClientId,
      androidClientId: AppStrings.firebaseAndroidClientId,
    ),
  );
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
      providers: providers,
      builder: (context, child) {
        final localeState = context.watch<LocaleProvider>();
        bool isLoggedIn = context.read<LocaleProvider>().isLoggedIn ?? false;

        return MaterialApp.router(
          routeInformationParser: router(isLoggedIn).routeInformationParser,
          routerDelegate: router(isLoggedIn).routerDelegate,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: localeState.themeMode ?? ThemeMode.system,
          title: AppStrings.appTitle,
          localeListResolutionCallback: (locales, supportedLocales) {
            if (localeState.locale == null) {
              return const Locale('ar', 'SA');
            }
            return localeState.locale;
          },
          locale: localeState.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
        );
      });
}

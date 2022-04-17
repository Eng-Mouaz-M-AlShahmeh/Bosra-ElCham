// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/application/locale_provider.dart';
import 'package:bosra_elcham/src/home/presentation/widgets/appBar.dart';
import 'package:bosra_elcham/src/home/presentation/widgets/bottomNavigationBar.dart';
import 'package:bosra_elcham/src/home/presentation/widgets/drawer.dart';
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = GlobalKey<ScaffoldState>();
    MyDecoration decoration = MyDecoration();
    var locale = context.read<LocaleProvider>();
    var translate = AppLocalizations.of(context)!;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(decoration.screenHeight(context) * 0.09),
          child: MyAppBar(
            scaffoldKey: _scaffoldKey,
          )),
      body: Center(child: InkWell(
        onTap: () {
          /// TODO: link firebase logout
          locale.setLogoutPref();
          context.go('/login');
        },
          child: Text(translate.logout))),
      bottomNavigationBar: PreferredSize(
          preferredSize: Size.fromHeight(decoration.screenHeight(context) * 0.1),
          child: const BottomNavBar()),
    );
  }
}

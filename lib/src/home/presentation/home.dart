// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/presentation/widgets/appBar.dart';
import 'package:bosra_elcham/src/home/presentation/widgets/bottomNavigationBar.dart';
import 'package:bosra_elcham/src/home/presentation/widgets/drawer.dart';
import 'package:bosra_elcham/src/shared/decoration.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = GlobalKey<ScaffoldState>();
    MyDecoration decoration = MyDecoration();
    // var translate = AppLocalizations.of(context)!;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(decoration.screenHeight(context) * 0.09),
          child: MyAppBar(
            scaffoldKey: _scaffoldKey,
          )),
      // body: Center(child: Text(translate.home)),
      bottomNavigationBar: PreferredSize(
          preferredSize:
              Size.fromHeight(decoration.screenHeight(context) * 0.1),
          child: const BottomNavBar()),
    );
  }
}

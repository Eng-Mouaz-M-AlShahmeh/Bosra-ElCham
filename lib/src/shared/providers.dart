// Developed by Eng Mouaz M Shahmeh 2022
import 'package:bosra_elcham/src/home/application/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider()),
];

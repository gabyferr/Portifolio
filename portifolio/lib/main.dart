import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/config/app_module.dart';
import 'app/config/app_widget.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}

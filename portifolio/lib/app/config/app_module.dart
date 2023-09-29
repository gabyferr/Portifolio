import 'package:flutter_modular/flutter_modular.dart';
import 'package:portifolio/app/module/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
     
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/home', child: (context, args) => const HomePage()),
      ];
}

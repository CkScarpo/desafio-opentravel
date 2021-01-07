import 'package:flutter_modular/flutter_modular.dart';
import 'package:open_travel_desafio/app/modules/home/home_page.dart';

import 'home_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter('/', child: (_, args) => HomePage())];
}

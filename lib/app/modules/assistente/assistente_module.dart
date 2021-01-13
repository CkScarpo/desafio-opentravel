import 'package:flutter_modular/flutter_modular.dart';

import 'assistente_controller.dart';
import 'assistente_page.dart';

class AssistenteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AssistenteController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => AssistentePage()),
      ];

  static Inject get to => Inject<AssistenteModule>.of();
}

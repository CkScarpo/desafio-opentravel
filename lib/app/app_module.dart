import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/assistente/assistente_module.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/home_module.dart';
import 'pages/splash/splash_controller.dart';
import 'pages/splash/splash_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
        //Bind<IAuthRepository>((i) => AuthRepository()),
        //Bind((i) => AuthController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/login', module: AssistenteModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

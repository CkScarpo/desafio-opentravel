import 'package:open_travel_desafio/app/pages/splash/splash_controller.dart';
import 'package:open_travel_desafio/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:open_travel_desafio/app/app_widget.dart';
import 'package:open_travel_desafio/app/pages/splash/splash_page.dart';

import 'modules/home/home_controller.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

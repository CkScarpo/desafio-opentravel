import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final textController = TextEditingController();

  //AuthController auth = Modular.get();

  @observable
  bool loading = false;

  /*@action
  Future loginWithEmailSenha() async {
    try {
      loading = true;
      await auth.loginWithEmailSenha();
      Modular.to.pushReplacementNamed('/login');
    } catch (e) {
      loading = false;
    }
  }

  logoff() async {
    await Modular.get<AuthController>().logOut();
    Modular.to.pushReplacementNamed('/login');
  }*/
}

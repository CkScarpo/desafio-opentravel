import 'package:mobx/mobx.dart';

part 'assistente_controller.g.dart';

class AssistenteController = _AssistenteControllerBase
    with _$AssistenteController;

abstract class _AssistenteControllerBase with Store {
  //AuthController auth = Modular.get();

  @observable
  bool loading = false;

/*@action
  Future loginWithEmailSenha() async {
    try {
      loading = true;
      await auth.loginWithEmailSenha();
      Modular.to.pushReplacementNamed('/home');
    } catch (e) {
      loading = false;
    }
  }*/
}

import 'package:login_animacoes/models/login-model.dart';
import 'package:mobx/mobx.dart';
part 'ctrl-login.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var login = LoginModel();

  @computed
  bool get isValid {
    // retorna true se todos os campos estiverem validados
    return validatePass() == null && validateEmail() == null;
  }

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9])")
      .hasMatch(login.email);

  String validateEmail() {
    if (login.email == null || login.email.isEmpty) {
      return 'Campo Obrigatório!';
    } else if (!isEmailValid) {
      return 'Email Inválido!';
    }
    return null;
  }

  String validatePass() {
    if (login.pass == null || login.pass.isEmpty) {
      return 'Campo Obrigatório!';
    } else if (login.pass.length < 6) {
      return 'Pelo menos 6 caracteres!';
    }
    return null;
  }
}

import 'package:mobx/mobx.dart';
part 'login-model.g.dart';

class LoginModel = _LoginModelBase with _$LoginModel;

abstract class _LoginModelBase with Store {
  @observable
  String email;
  @action
  changeEmail(String value) => email = value;

  @observable
  String pass;
  @action
  changePass(String value) => pass = value;

  @observable
  bool passVissible = false;
  @action
  togglePassVisibility() => passVissible = !passVissible;
}

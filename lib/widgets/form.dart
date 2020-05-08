import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_animacoes/controllers/ctrl-login.dart';
import 'package:login_animacoes/widgets/input_field.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _ctrl = Controller();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Observer(
          builder: (_) {
            return Column(
              children: <Widget>[
                // campo de email
                InputField(
                  onChanged: _ctrl.login.changeEmail,
                  errorText: _ctrl.validateEmail(),
                  type: TextInputType.emailAddress,
                  hint: 'Digite seu Email',
                  icon: Ionicons.ios_person,
                  obscure: false,
                ),
                SizedBox(height: 25),
                // campo de senha
                InputField(
                  onChanged: _ctrl.login.changePass,
                  errorText: _ctrl.validatePass(),
                  hint: 'Digite sua Senha',
                  icon: Ionicons.ios_lock,
                  obscure: true,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

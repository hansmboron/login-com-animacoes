import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_animacoes/controllers/ctrl-login.dart';
import 'package:login_animacoes/widgets/input_field.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class FormContainer extends StatelessWidget {
  final ctrl = Controller();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Observer(
          builder: (_) {
            return Column(
              children: <Widget>[
                // campo de email
                InputField(
                  onChanged: ctrl.login.changeEmail,
                  errorText: ctrl.validateEmail(),
                  type: TextInputType.emailAddress,
                  hint: 'Digite seu Email',
                  icon: EvaIcons.person,
                  obscure: false,
                ),
                SizedBox(height: 25),
                // campo de senha
                InputField(
                  onChanged: ctrl.login.changePass,
                  errorText: ctrl.validatePass(),
                  hint: 'Digite sua Senha',
                  icon: EvaIcons.lock,
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

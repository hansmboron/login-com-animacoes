import 'package:flutter/material.dart';
import 'package:login_animacoes/widgets/input_field.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              type: TextInputType.emailAddress,
              hint: 'Digite seu Email',
              icon: Ionicons.ios_person,
              obscure: false,
            ),
            SizedBox(height: 25),
            InputField(
              hint: 'Digite sua Senha',
              icon: Ionicons.ios_lock,
              obscure: true,
            )
          ],
        ),
      ),
    );
  }
}

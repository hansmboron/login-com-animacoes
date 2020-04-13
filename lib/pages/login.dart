import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_animacoes/widgets/form.dart';
import 'package:login_animacoes/widgets/register-btn.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 35),
                      child: Icon(Ionicons.ios_beer,
                          color: Colors.white, size: 140),
                    ),
                    FormContainer(),
                    RegisterButton()
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

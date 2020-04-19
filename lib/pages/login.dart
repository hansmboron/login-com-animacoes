import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:login_animacoes/pages/home.dart';
import 'package:login_animacoes/widgets/form.dart';
import 'package:login_animacoes/widgets/register-btn.dart';
import 'package:login_animacoes/widgets/stagger-animation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
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
                ),
                StaggerAnimation(
                  controller: _animationController.view,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

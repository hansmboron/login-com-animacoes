import 'package:flutter/material.dart';
import 'package:login_animacoes/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      home: Login(),
    );
  }
}

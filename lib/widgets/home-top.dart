import 'package:flutter/material.dart';
import 'package:login_animacoes/widgets/category-view.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('img/bg2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Bem-vindo Hans!',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('img/perfil.jpg'), fit: BoxFit.cover)),
              child: Container(
                height: containerGrow.value * 35,
                width: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80.0),
                alignment: Alignment.center,
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: containerGrow.value * 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_animacoes/widgets/animated-listview.dart';
import 'package:login_animacoes/widgets/fade-container.dart';
import 'package:login_animacoes/widgets/home-top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePos;
  final Animation<Color> fadeAnimation;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.fastLinearToSlowEaseIn,
        ),
        listSlidePos = EdgeInsetsTween(
          begin: EdgeInsets.only(bottom: 0.0),
          end: EdgeInsets.only(bottom: 80.0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.2,
              0.8,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeAnimation = ColorTween(
          begin: Colors.deepOrange,
          end: Colors.deepOrange[0],
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.decelerate));

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrow: containerGrow,
            ),
            AnimatedListView(
              listSlidePos: listSlidePos,
            )
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeAnimation: fadeAnimation,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}

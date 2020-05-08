import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller})
      : btnSqz = Tween(
          begin: 300.0,
          end: 50.0,
        ).animate(CurvedAnimation(
          parent: controller,
          curve: Interval(0.0, 0.150),
        )),
        btnZoom = Tween(
          begin: 50.0,
          end: 1000.0,
        ).animate(
          CurvedAnimation(
              parent: controller,
              curve: Interval(
                0.5,
                1,
                curve: Curves.bounceOut,
              )),
        );

  final Animation<double> btnSqz;
  final Animation<double> btnZoom;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 80,
      ),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Hero(
          tag: 'fade',
          child: btnZoom.value <= 70
              ? Container(
                  width: btnSqz.value,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: _buildInside(context),
                )
              : Container(
                  width: btnZoom.value,
                  height: btnZoom.value,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: btnZoom.value < 480
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (btnSqz.value > 80) {
      return Text(
        'Entrar',
        style: TextStyle(color: Colors.white, fontSize: 21),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}

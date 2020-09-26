import 'package:flutter/material.dart';

class ChangePageRoute extends PageRouteBuilder {
  final Widget child;
  ChangePageRoute(this.child)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return Transform.scale(
              scale: animation.value,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        );
}

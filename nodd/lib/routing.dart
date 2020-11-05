import 'package:flutter/material.dart';
import 'package:nodd/screens/home.dart';
import 'package:nodd/screens/nodd.dart';
import 'package:nodd/screens/splashscreen.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => Splashscreen());
        break;
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
        break;
      case '/nodd':
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Nodd(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Container(),
          ),
        );
    }
  }

}

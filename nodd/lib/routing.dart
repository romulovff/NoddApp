import 'package:flutter/material.dart';
import 'package:nodd/screens/home.dart';
import 'package:nodd/screens/nodd.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
        break;
      case '/nodd':
        return MaterialPageRoute(builder: (_) => Nodd());
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

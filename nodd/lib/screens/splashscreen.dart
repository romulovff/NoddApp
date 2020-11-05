import 'package:flutter/material.dart';
import 'package:nodd/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routing.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: '/home',
        routeName: '/home',
        title: Text(
          'N',
          style: GoogleFonts.viga(
            fontWeight: FontWeight.bold,
            color: Colors.blue[400],
            fontSize: 120.0,
          ),
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.blue[300]);
  }
}

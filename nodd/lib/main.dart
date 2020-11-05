import 'package:flutter/material.dart';
import 'package:nodd/screens/nodd.dart';
import './screens/home.dart';
import './routing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nodd',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Routing.generateRoute,
      initialRoute: '/splash',
    );
  }
}
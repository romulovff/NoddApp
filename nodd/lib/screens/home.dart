import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:nodd/components/note.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        title: Text(
          'NODD',
          style: GoogleFonts.viga(
            shadows: [
              Shadow(
                offset: Offset(2,2),
                color: Colors.blue[800],
              ),
            ],
            fontWeight: FontWeight.bold,
            letterSpacing: 5,
            fontSize: 60,
          ),
        ),
        backgroundColor: Colors.blue[400],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[400], Colors.blue[200]],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              height: 520,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                  Note(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Container(
              height: 100,
              width: 100,
              child: RaisedButton(
                color: Colors.white,
                elevation: 10,
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.blue[200],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: () => {Navigator.pushNamed(context, '/nodd')},
              ),
            ),
          ],
        ),
      ),
    );
  }

}
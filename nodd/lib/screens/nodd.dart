import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nodd extends StatefulWidget {
  @override
  _NoddState createState() => _NoddState();
}

class _NoddState extends State<Nodd> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[400], Colors.blue[200]],
          ),
        ),
        child: Center(
            child: Form(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(48)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(36, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_downward,),
                        iconSize: 50,
                        color: Colors.white,
                        onPressed: () => {Navigator.pop(context)},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _textController,
                      maxLines: 8,
                      maxLength: 100,
                      style: GoogleFonts.viga(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Send a Nodd',
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
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
                    Icons.navigate_next,
                    size: 50,
                    color: Colors.blue[200],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () => {
                    print(_textController.text),
                    Navigator.pop(context)
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

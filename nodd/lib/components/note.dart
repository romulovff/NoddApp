import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class Note extends StatelessWidget {
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Colors.blue[200],
        elevation: 0,
        onPressed: () => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                content:
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.blue[300],
                          width: 8,
                        ),
                      ),
                      width: 100,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'test test test test test test test test test test test test test test test test test test test test ',
                            maxLines: 8,
                            style: GoogleFonts.viga(
                              shadows: [
                                Shadow(
                                  color: Color.fromRGBO(150, 150, 150, 0.1),
                                  offset: Offset(2, 2)
                                )
                              ],
                              color: Colors.blue[200],
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                    )
              );
            }
          ),
        },
        child: Container(
          child: Center(
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Transform.rotate(
                  angle: - math.pi / 6,
                  child: Text(
                    'N',
                    style: GoogleFonts.viga(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue[200],
            boxShadow: [
              BoxShadow(
                offset: Offset(2,2),
                blurRadius: 2,
                color: Color.fromRGBO(255, 255, 255, 0.1)
              ),
              BoxShadow(
                offset: Offset(-2,-2),
                blurRadius: 2,
                color: Color.fromRGBO(255, 255, 255, 0.1)
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

}
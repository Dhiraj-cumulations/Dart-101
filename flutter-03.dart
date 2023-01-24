import 'dart:html';

import 'package:flutter/material.dart';

// the main function is the starting point for all our flutter apps.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // @Override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 80,
              //padding: EdgeInsets.all(10),
              //margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              color: Colors.white,
              child: Text("Container 1"),
            ),
            SizedBox(height: 10),
            Container(
                height: 50,
                width: 80,
                color: Colors.blue,
                child: Text("Container 2")),
            SizedBox(height: 10),
            Container(
                height: 50,
                width: 80,
                color: Colors.amberAccent,
                child: Text("Container 3"))
          ],
        )),
      ),
    );
  }
}

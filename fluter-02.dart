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
            child: Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              color: Colors.white,
              child: Text("Hello!"),
            ),
          )),
    );
  }
}

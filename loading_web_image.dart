import 'package:flutter/material.dart';

// the main function is the starting point for all our flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff81a9bc),
        appBar: AppBar(
          title: Text("I am Rich!"),
          backgroundColor: Color(0xff0e1113),
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://www.freecodecamp.org/news/content/images/2022/09/jonatan-pie-3l3RwQdHRHg-unsplash.jpg')),
        ),
      ),
    ),
  );
}

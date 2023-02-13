import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy6ex0zzcdQoOGGNP2_5k1BocvkC3cJMy8Hg&usqp=CAU'),
            ),
            Text(
              'Naruto Uzumaki',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Seventh Hokage',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade100,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.purple,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.call, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '+81 000 000 0007',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.purple,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Kurama@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}

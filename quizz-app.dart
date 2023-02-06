import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQUestion() {
    print("You are the chosen one!");
  }

  var Questions = ["Your favorite color?", "Your favorite animal?"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(Questions.elementAt(0)),
            ElevatedButton(onPressed: answerQUestion, child: Text("Option 1")),
            ElevatedButton(onPressed: answerQUestion, child: Text("Option 2")),
            ElevatedButton(onPressed: answerQUestion, child: Text("Option 3")),
          ],
        ),
      ),
    );
  }
}

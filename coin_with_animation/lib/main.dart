import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(CoinFlipApp());

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 4, 6),
        appBar: AppBar(
          title: Text('Stark or Lanister??'),
          backgroundColor: Color.fromARGB(255, 249, 1, 1),
        ),
        body: CoinFlipPage(),
      ),
    );
  }
}

class CoinFlipPage extends StatefulWidget {
  @override
  _CoinFlipPageState createState() => _CoinFlipPageState();
}

class _CoinFlipPageState extends State<CoinFlipPage>
    with SingleTickerProviderStateMixin {
  int coinSide = 0;
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          flipCoin();
        }
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void flipCoin() {
    setState(() {
      coinSide = Random().nextInt(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(pi * 4 * animation.value * animation.value),
            alignment: FractionalOffset.center,
            child: Image.asset(
                coinSide == 0 ? 'images/stark.png' : 'images/lanister.png'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              controller.forward(from: 0.0);
            },
            //color: Colors.lightBlue,
            //textColor: Colors.white,
            child: Text('Whats my Clan??'),
          ),
        ],
      ),
    );
  }
}

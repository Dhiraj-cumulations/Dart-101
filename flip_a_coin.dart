import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(CoinFlipApp());

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Flip a coin!'),
          backgroundColor: Colors.black,
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

class _CoinFlipPageState extends State<CoinFlipPage> {
  int coinSide = 0;

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
          Image.asset(
              coinSide == 0 ? 'images/heads.png' : 'images/tails.png'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              flipCoin();
            },
            //color: Colors.lightBlue,
            //textColor: Colors.white,
            child: Text('Flip Coin'),
          ),
        ],
      ),
    );
  }
}


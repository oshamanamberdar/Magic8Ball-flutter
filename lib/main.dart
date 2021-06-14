import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Guessing Ball'),
          ),
        ),
        body: guessingBall(),
      ),
    ),
  );
}

class guessingBall extends StatefulWidget {
  @override
  _guessPageState createState() => _guessPageState();
}

class _guessPageState extends State<guessingBall> {
  int guessNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  guessNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$guessNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

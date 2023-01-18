// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        // ignore: prefer_const_constructors
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print('ballNumber = $ballNumber');
              });
            },
            child: Image.asset('images/ball$ballNumber.png')));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  void randomAnswer() {
    setState(() {
      randomBall = Random().nextInt(5) + 1;
    });
  }

  int randomBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'The ball knows eveything, just ask it a question!',
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomAnswer();
              },
              child: Image.asset('images/ball$randomBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}

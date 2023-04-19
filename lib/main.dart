import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Center (
              child: Text('Ask Me Anything'),
            ),
            backgroundColor: Colors.teal[500],
          ),
          body: const MagicBall(),
        ),
      )
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  
  void changeBallForm() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                onPressed: () {
                  changeBallForm();
                },
                child: Image.asset('images/ball$ballNumber.png'),
          ),
          ),
        ],
      ),
    );
  }
}


import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0),
            ),
          ),
          backgroundColor: Colors.lightBlue[600],
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  // int ballImageNumber = 3;
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballImageNumber = 1;

  void ballImageChange() {
    setState(() {
      ballImageNumber = Random().nextInt(5) + 1;
      print('ballimage$ballImageNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ballImageChange();
              },
              child: Image.asset(
                'images/ball$ballImageNumber.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}

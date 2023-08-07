import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: Magic8(),
        ),
      ),
    );

class Magic8 extends StatefulWidget {
  const Magic8({Key? key}) : super(key: key);

  @override
  State<Magic8> createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballNumber = 1;

  void ball() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              ball();
            },
          ),
        ),
      ],
    );
  }
}

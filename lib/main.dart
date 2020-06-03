import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(
            child: Text('DHAYAM'),
          ),
          backgroundColor: Colors.black,
        ),
        body: Dhayams(),
      ),
    ),
  );
}

class Dhayams extends StatefulWidget {
  @override
  _DhayamsState createState() => _DhayamsState();
}

class _DhayamsState extends State<Dhayams> {
  int a = 1;
  int b = 1;

  void changeDiceFace() {
    setState(() {
      a = Random().nextInt(6) + 1; //(0-5)+1 = we will get 1 to 6.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(55.0),
                child: Image.asset(
                  'images/dice$a.png',
                ),
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}

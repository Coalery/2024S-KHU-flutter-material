import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          color: Colors.blue,
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

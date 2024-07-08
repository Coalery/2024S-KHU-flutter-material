import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.red,
            ),
            Container(
              height: 500,
              color: Colors.blue,
            ),
            Container(
              height: 700,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

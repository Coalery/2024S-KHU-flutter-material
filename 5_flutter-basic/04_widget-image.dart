import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.network(
              'https://www.khu.ac.kr/upload/cross/images/000001/imgSub0401.jpg',
              width: 100,
              height: 150,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

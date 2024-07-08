import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HelloWorldText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello World');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: HelloWorldText(),
        ),
      ),
    );
  }
}

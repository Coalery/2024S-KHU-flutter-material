import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Enter some text',
            ),
          ),
        ),
      ),
    );
  }
}

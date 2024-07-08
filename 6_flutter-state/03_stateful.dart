import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool enabled = false;

  void toggleSwitch() {
    setState(() {
      enabled = !enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(enabled ? '🌕' : '🌑'),
        TextButton(child: Text('Button'), onPressed: toggleSwitch),
      ])),
    ));
  }
}

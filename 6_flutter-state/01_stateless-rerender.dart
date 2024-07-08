import 'package:flutter/material.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('rendered');
    return Text('Hello World!');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Text('$counter'),
        TextButton(
            child: Text('Button'), onPressed: () => setState(() => counter++)),
        Hello()
      ])),
    );
  }
}

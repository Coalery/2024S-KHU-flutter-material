import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class SimpleStateful extends StatefulWidget {
  @override
  _SimpleStatefulState createState() => _SimpleStatefulState();
}

class _SimpleStatefulState extends State<SimpleStateful> {
  @override
  void initState() {
    super.initState();
    print('initState()');
  }

  @override
  void dispose() {
    print('dispose()');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('SimpleStateful');
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          enabled ? SimpleStateful() : Text('Not enabled'),
          TextButton(
              child: Text('Button'),
              onPressed: () => setState(() => enabled = !enabled))
        ]))));
  }
}

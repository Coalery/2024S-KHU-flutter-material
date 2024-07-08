import 'package:flutter/material.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Switch(initValue: true))),
    );
  }
}

class Switch extends StatefulWidget {
  final bool initValue;

  Switch({required this.initValue});

  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  late bool enabled;

  @override
  void initState() {
    super.initState();
    this.enabled = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          Text(enabled ? 'Enabled' : 'Disabled'),
          TextButton(
              child: Text('Button'),
              onPressed: () => setState(() => enabled = !enabled))
        ]))));
  }
}

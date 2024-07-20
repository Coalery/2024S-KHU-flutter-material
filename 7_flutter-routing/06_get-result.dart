import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String? data = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              data ?? 'Hello World',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () async {
                Object? result = await Navigator.pushNamed(context, '/second');

                if (result != null) {
                  setState(() {
                    data = result as String;
                  });
                }
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context, '1');
              },
              child: Text('1')),
          TextButton(
              onPressed: () {
                Navigator.pop(context, '2');
              },
              child: Text('2'))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'pages/FrontPage.dart';

void main() => runApp(StacksApp());

class StacksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STACKS',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent,
          fontFamily: 'Philosopher'),
      home: FrontPage(),
    );
  }
}

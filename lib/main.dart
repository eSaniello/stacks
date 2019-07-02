import 'package:flutter/material.dart';

void main() => runApp(StacksApp());

class StacksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STACKS',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('STACKS'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('This is the Stacks App!'),
        ),
      ),
    );
  }
}

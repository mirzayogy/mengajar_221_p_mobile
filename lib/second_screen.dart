import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second_screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Column(
          children: const <Widget>[Text('Second Screen')],
        ),
      ),
    );
  }
}

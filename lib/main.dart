import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/first_screen.dart';
import 'package:mengajar_221_p_mobile/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName: (context) => const FirstScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
    );
  }
}

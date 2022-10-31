import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/random_word_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
        ),
        body: const Center(child: RandoWordList()),
      ),
    );
  }
}

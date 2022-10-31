import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandoWordList extends StatefulWidget {
  const RandoWordList({Key? key}) : super(key: key);

  @override
  State<RandoWordList> createState() => _RandoWordListState();
}

class _RandoWordListState extends State<RandoWordList> {
  @override
  Widget build(BuildContext context) {
    final suggestions = <WordPair>[];
    const biggerFont = TextStyle(fontSize: 18);

    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return const Divider();

      final index = i ~/ 2;
      if (index >= suggestions.length) {
        suggestions.addAll(generateWordPairs().take(10));
      }
      return ListTile(
        title: Text(
          suggestions[index].asPascalCase,
          style: biggerFont,
        ),
      );
    });
  }
}

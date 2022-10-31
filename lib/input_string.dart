import 'package:flutter/material.dart';

class InputString extends StatefulWidget {
  const InputString({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputStringState();
}

class _InputStringState extends State<InputString> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Write your name here...',
              labelText: 'Your Name',
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, $_name'),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}

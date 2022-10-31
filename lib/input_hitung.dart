import 'package:flutter/material.dart';

class InputHitung extends StatefulWidget {
  const InputHitung({Key? key}) : super(key: key);

  @override
  State<InputHitung> createState() => _InputHitungState();
}

class _InputHitungState extends State<InputHitung> {
  int _panjang = 0;
  int _lebar = 0;
  int _luas = 0;
  String _luasString = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
              decoration: const InputDecoration(
                  hintText: "Input Panjang", labelText: "Panjang"),
              onChanged: (String value) {
                setState(() {
                  _panjang = int.parse(value);
                });
              }),
          const SizedBox(
            height: 20,
          ),
          TextField(
              decoration: const InputDecoration(
                  hintText: "Input Lebar", labelText: "Lebar"),
              onChanged: (String value) {
                setState(() {
                  _lebar = int.parse(value);
                });
              }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Klik'),
            onPressed: () {
              _luas = _panjang * _lebar;
              _luasString = '$_luas';
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text(_luasString));
                  });
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

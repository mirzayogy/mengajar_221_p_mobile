import 'package:flutter/material.dart';

class BagianCreate extends StatefulWidget {
  static const routeName = '/bagian_create';
  const BagianCreate({Key? key}) : super(key: key);

  @override
  State<BagianCreate> createState() => _BagianCreateState();
}

class _BagianCreateState extends State<BagianCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Membaca API Online'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Tuliskan nama bagian baru',
                  labelText: 'Input Bagian',
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}

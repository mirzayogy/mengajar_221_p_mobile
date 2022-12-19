import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ApiService apiService = ApiService();
    apiService.getBagian().then((value) => {inspect(value)});
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
        ),
        body: const Center(
          child: Text("Coba API localhost"),
        ),
      ),
    );
  }
}

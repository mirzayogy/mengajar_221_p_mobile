import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/screen/restaurant_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: RestaurantList.routeName,
      routes: {
        RestaurantList.routeName: (context) => const RestaurantList(),
      },
    );
  }
}

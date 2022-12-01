import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/second_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first_screen';

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messangerKey = GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
      scaffoldMessengerKey: messangerKey,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
        ),
        body: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SecondScreen.routeName);
              },
              child: const Text("NPM"),
            ),
            GestureDetector(
              onTap: () {
                messangerKey.currentState
                    ?.showSnackBar(const SnackBar(content: Text('Mirza')));
              },
              child: const Text("Mirza"),
            ),
            GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://flutter.dev');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Text("Klik to Flutter Website"),
            ),
          ],
        ),
      ),
    );
  }

//   Future<void> _launchUrl(url) async {
//     if (!await canLaunchUrl(url)) {
//       throw 'Could not launch $url';
//     } else {
//       await launchUrl(url);
//       print('ini');
//     }
//   }
}

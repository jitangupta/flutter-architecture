import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Architecture App'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(kDefaultPadding),
        children: [
          // Dark / Light Theme
          Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              // decoration: const BoxDecoration(color: kDarkColor),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dark/Light Theme',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                        'Change the device dark/light mode to see the impact.'),
                  ]))
        ],
      ),
    );
  }
}

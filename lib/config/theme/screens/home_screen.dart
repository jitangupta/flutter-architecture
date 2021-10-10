import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Architecture App'),
        backgroundColor: kPrimaryColor,
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Text('hi'),
      )),
    );
  }
}

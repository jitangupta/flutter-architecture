import 'package:flutter/material.dart';

import 'config/theme/screens/home_screen.dart';
import 'config/theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JugaadHai',
      theme: ThemeData(
        // Using Nunito as font, configuration has been done into pubspec.yaml file
        fontFamily: "Nunito",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        primaryColor: kPrimaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}

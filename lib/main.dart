import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_config.dart';
import 'screens/home_screen.dart';

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
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const HomeScreen(),
    );
  }
}

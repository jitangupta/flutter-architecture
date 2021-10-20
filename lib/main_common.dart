import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_config.dart';
import 'package:flutter_architecture/flavor_config.dart';
import 'screens/home_screen.dart';

Future<Widget> initializeApp(FlavorConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(config: config);
}

class MyApp extends StatelessWidget {
  final FlavorConfig config;
  const MyApp({Key? key, required this.config}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Architecture',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      
      home: const HomeScreen(),
    );
  }
}

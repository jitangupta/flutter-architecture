import 'package:flutter/material.dart';
import 'package:flutter_architecture/flavor_config.dart';
import 'package:flutter_architecture/main_common.dart';

void main() async {
  final appConfig = FlavorConfig()
    ..appTitle = "Flutter Architecutre Dev"
    ..logoPath = "assets/images/flutter-achitecture-dev.png";

  Widget app = await initializeApp(appConfig);
  runApp(app);
}

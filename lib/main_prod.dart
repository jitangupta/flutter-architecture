import 'package:flutter/material.dart';
import 'package:flutter_architecture/main_common.dart';

import 'flavor_config.dart';

void main() async {
  final appConfig = FlavorConfig();

  Widget app = await initializeApp(appConfig);
  runApp(app);
}

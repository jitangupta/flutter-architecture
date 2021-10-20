import 'package:flutter/material.dart';
import 'package:flutter_architecture/config/theme/theme_constants.dart';

// Configuring light Theme
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      backgroundColor: Colors.grey.shade100,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme:
          const AppBarTheme(backgroundColor: kPrimaryColor, elevation: 0),
      iconTheme: const IconThemeData(color: kContentColorLightTheme),
      textTheme:
          Theme.of(context).textTheme.apply(bodyColor: kContentColorLightTheme),
      colorScheme: const ColorScheme.light(
          primary: kPrimaryColor,
          error: kErrorColor,
          background: kPrimaryColor));
}

// Configuring dark Theme
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      backgroundColor: kDarkColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: const AppBarTheme(backgroundColor: kDarkColor, elevation: 0),
      iconTheme: const IconThemeData(color: kContentColorDarkTheme),
      textTheme:
          Theme.of(context).textTheme.apply(bodyColor: kContentColorDarkTheme),
      colorScheme: const ColorScheme.dark().copyWith(
          primary: kPrimaryColor, error: kErrorColor, background: kDarkColor));
}


// Good Example of implementation
// https://github.com/abuanwar072/Chat-Messaging-App-Light-and-Dark-Theme/blob/master/lib/theme.dart
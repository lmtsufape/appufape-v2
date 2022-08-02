import 'package:appufapev2/constants/constants.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: Colors.blue,
    backgroundColor: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(backgroundColor: kDetailColor),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: kDetailColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kDetailColor,
        textStyle: const TextStyle(
          color: kLightColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

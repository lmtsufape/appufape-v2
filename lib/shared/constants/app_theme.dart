import 'package:flutter/material.dart';
import 'package:appufape/shared/constants/style_constants.dart';

class AppTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: kDefaultFontFamily,
        appBarTheme: const AppBarTheme()
            .copyWith(backgroundColor: kBackgroundColor, elevation: 0));
  }
}

import 'package:app_w_gestorcontable/design/colors.dart';
import 'package:flutter/material.dart';

class WeinFluThemes {
  WeinFluThemes._();
  static ThemeData defaullTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: WeinFluColors.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontSize: 21.0, color: WeinFluColors.brandPrimaryColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    ),
  );
}
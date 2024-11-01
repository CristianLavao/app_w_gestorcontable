import 'package:app_w_gestorcontable/design/colors.dart';
import 'package:flutter/material.dart';

class WeinFluThemes {
  WeinFluThemes._();
  static ThemeData defaullTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: WeinFluColors.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: WeinFluColors.brandLightColor),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: WeinFluColors.brandLightColor ),
      displaySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: WeinFluColors.brandLightColor ),
      headlineLarge: TextStyle(fontSize: 21.0, color: WeinFluColors.brandPrimaryColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    ),
  );
}
import 'package:app_w_gestorcontable/design/themes.dart';
import 'package:app_w_gestorcontable/pages/home_page.dart';
import 'package:flutter/material.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: WeinFluThemes.defaullTheme,
      home: const HomePage(),
  );
  }

}
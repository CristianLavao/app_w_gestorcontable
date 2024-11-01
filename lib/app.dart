import 'package:app_w_gestorcontable/design/themes.dart';
import 'package:app_w_gestorcontable/models/user.dart';
import 'package:app_w_gestorcontable/pages/home_page.dart';
import 'package:app_w_gestorcontable/pages/new_page.dart';
import 'package:app_w_gestorcontable/pages/other_page.dart';
import 'package:flutter/material.dart';

import 'config/app_routes.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: WeinFluThemes.defaullTheme,
      // home: const HomePage(
      //   key: Key('home page'),
      // ),
      // routes: {
      //   AppRoutes.newPage:(context) => const NewPage(),
      //   AppRoutes.otherPage:(context) => const OtherPage(),
      //   AppRoutes.home:(context) => const HomePage(),
      // },
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case AppRoutes.newPage:
          return MaterialPageRoute(builder: (context) => const NewPage());
        case AppRoutes.otherPage:
          return MaterialPageRoute(builder: (context) => OtherPage(userData: settings.arguments as User));
        default:
          return MaterialPageRoute(builder: (context) => const HomePage());
      }
    },

  );
  }

}
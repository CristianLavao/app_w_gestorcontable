import 'package:app_w_gestorcontable/design/colors.dart';
import 'package:app_w_gestorcontable/design/radius.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: WeinfluRadius.small_radius,
          bottomRight: WeinfluRadius.small_radius,
        )),
        backgroundColor: WeinFluColors.brandLightColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Center(
        child:
            Text('Hola, estamos aprendiendo', style: TextStyle(fontSize: 34)),
      ),
    );
  }
}


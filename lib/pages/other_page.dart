import 'package:app_w_gestorcontable/models/user.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final User userData;
  const OtherPage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar( title: Text('Other Page'),),
    body: Center(
      child: TextButton(child: Text('Hola a todos desde otra pagina ${userData.name}'),
       onPressed: () => Navigator.of(context).pop(),)
    ));
  }
}
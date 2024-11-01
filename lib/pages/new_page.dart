import 'package:app_w_gestorcontable/config/app_routes.dart';
import 'package:app_w_gestorcontable/models/user.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Cristian', edad: 25);
    return Scaffold(appBar: AppBar( title: Text('New Page'),),
    body: Center(
      child: TextButton(child: Text('Hola a todos desde una nueva pagina'),
       onPressed: () => Navigator.of(context).pushReplacementNamed(AppRoutes.otherPage, arguments: userData),)
    ));
  }
}
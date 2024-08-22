import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
    appBar: AppBar(
      title: const Text('Calabu App'),
    ),
    body: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
          child: Text(
        'Estamos aprendiendo flutter',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 34),
      )),
    ),
  )));
}

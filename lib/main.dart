// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:niflheim/dope.dart';
import 'package:niflheim/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        body: Center(
          child: NeuButton(),
        ),
      ),
    );
  }
}

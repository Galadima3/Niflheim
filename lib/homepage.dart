// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:niflheim/glass_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/images/soccer1.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: GlassBox(
            height: 250.0,
            width: 250.0,
            child: Center(
              child: Text(
                'Mylez',
                style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

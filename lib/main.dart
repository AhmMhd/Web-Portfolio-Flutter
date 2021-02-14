import 'package:flutter/material.dart';
import 'package:portfolio/screens/ContactInfo.dart';
import 'package:portfolio/screens/Dashboard.dart';
import 'package:portfolio/screens/Portfolio.dart';
import 'package:portfolio/screens/Skills.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        scrollDirection: Axis.vertical,
        children: [Dashboard(), Skills(), Portfolio(), ContactInfo()],
      ),
    );
  }
}

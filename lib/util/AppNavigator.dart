import 'package:flutter/material.dart';

class AppNavigator {
  static void navigate(BuildContext context, StatelessWidget widget){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}

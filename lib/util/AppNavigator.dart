import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/MoreAboutMe.dart';

class AppNavigator {
  static void navigate(BuildContext context, StatelessWidget widget){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}

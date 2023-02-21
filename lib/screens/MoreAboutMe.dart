import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class MoreAboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppColors.appBlack,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MORE ABOUT",
                  style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(3),
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  " ME",
                  style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(3),
                      fontWeight: FontWeight.bold,
                      color: AppColors.appYellow),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

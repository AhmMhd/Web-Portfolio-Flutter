import 'package:flutter/material.dart';
import 'package:portfolio/screens/ContactInfo.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import 'Skills.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_main.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Abdul Hakeem Mehmood",
              style: TextStyle(
                fontFamily: "YellowTail",
                fontSize: ResponsiveFlutter.of(context).fontSize(3.5),
                color: Colors.white,
              ),
            ),
            Text(
              "Sr. Android Application Developer",
              style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(2),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "A forward-thinking developer offering more than three years of experience building, integrating and supporting Android applications for mobile.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
                color: Colors.grey[200],
              ),
            )
          ],
        ),
      ),
    );
  }
}
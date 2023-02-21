import 'package:flutter/material.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import 'Skills.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_waves.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(62.0),
                    width: 400,
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/avatar.jpg",
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ))
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "I'M Abdul Hakeem",
                    style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(4),
                      color: ColorConstants.appYellow
                    ),
                  ),
                  Text(
                    "Sr. Software Engineer - Android",
                    style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(2),
                      color: Colors.white
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32,12,32,0),
                    child: Text(
                      "I am pakistan based senior Android developer with more than 6 years of experince in building android apps for mobile",
                      style: TextStyle(
                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                        color: Colors.white
                      ),
                    ),
                  )
                ],
              ))
            ],
          )),
    );
  }
}

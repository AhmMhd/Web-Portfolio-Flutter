import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/CustomWidgets.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../theme/AppFonts.dart';
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "I'M ",
                          style: TextStyle(
                              fontSize: ResponsiveFlutter.of(context).fontSize(4),
                              color: Colors.white,
                              fontFamily: AppFonts.poppinsBold,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "ABDUL HAKEEM",
                          style: TextStyle(
                              fontSize: ResponsiveFlutter.of(context).fontSize(4),
                              color: AppColors.appYellow,
                              fontFamily: AppFonts.poppinsBold,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                Text(
                  "SR. SOFTWARE ENGINEER - ANDROID",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ResponsiveFlutter.of(context).fontSize(2),
                  color: Colors.white,
                  fontFamily: AppFonts.poppinsBold,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 12, 32, 0),
                child: Text(
                  "I am pakistan based senior Android developer with more than 6 years of experience in building android apps for mobile",
                  style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                      color: Colors.white),
                ),
              ),
              RoundedButtonWithRightActionArrow()
            ],
          ))
      ],
    )),
    );
  }
}

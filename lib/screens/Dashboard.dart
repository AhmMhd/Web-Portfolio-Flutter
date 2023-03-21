import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/CustomWidgets.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../theme/AppFonts.dart';
import '../util/utils.dart';
import 'Skills.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardStyleTwo();
  }
}

class DashboardStyleOne extends StatelessWidget {
  final String linkedInURL =
      "https://www.linkedin.com/in/abdul-hakeem-mahmood-15112489/";
  final String mediumURL = "https://abdulhakeemahmoood.medium.com/";
  final String stakeOverFlowURL =
      "https://stackoverflow.com/users/5281486/abdul-hakeem-mahmood";
  final String gitHubURL = "https://github.com/AhmMhd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/bg_main.jpg'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.appYellow,
                child: ClipOval(child: Image.asset("images/avatar.png")),
                radius: 92,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "I am Abdul Hakeem",
                style: TextStyle(
                    fontSize: ResponsiveFlutter.of(context).fontSize(2),
                    color: AppColors.appBlack,
                    fontFamily: AppFonts.poppinsBold,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sr. Software Engineer (Android)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                  color: AppColors.appBlack,
                  fontFamily: AppFonts.poppinsBold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_history),
                  Text('Abu Dhabi, UAE'),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.phone),
                  Text('+971502490197'),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.email_rounded),
                  Text(' ahm.mhd78@gmail.com')
                ],
              ),
              SizedBox(
                height: 12,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveFlutter.of(context).fontSize(0.8),
                        color: AppColors.appBlack,
                        fontFamily: AppFonts.poppinsBold,
                      ),
                      text: 'I am a forward-thinking developer with ',
                      children: [
                        TextSpan(
                            text: '6 Years ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  ResponsiveFlutter.of(context).fontSize(1.2),
                              color: AppColors.appYellow,
                              fontFamily: AppFonts.poppinsBold,
                            )),
                        TextSpan(
                            text:
                                'of experience\nbuilding, integrating and supporting Android applications for mobile devices\nin the e-commerce and education industries.')
                      ])),
              RoundedButtonWithRightActionArrow('More About Me',Icons.arrow_forward),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageButton(
                    imageName: "ic_linkedin",
                    onTap: () {
                      launchURL(linkedInURL);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ImageButton(
                    imageName: "ic_github",
                    onTap: () {
                      launchURL(gitHubURL);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ImageButton(
                    imageName: "ic_stakeoverflow",
                    onTap: () {
                      launchURL(stakeOverFlowURL);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ImageButton(
                    imageName: "ic_medium",
                    onTap: () {
                      launchURL(mediumURL);
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class DashboardStyleTwo extends StatelessWidget {
  final String linkedInURL =
      "https://www.linkedin.com/in/abdul-hakeem-mahmood-15112489/";
  final String mediumURL = "https://abdulhakeemahmoood.medium.com/";
  final String stakeOverFlowURL =
      "https://stackoverflow.com/users/5281486/abdul-hakeem-mahmood";
  final String gitHubURL = "https://github.com/AhmMhd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage('assets/images/bg_main.jpg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.appYellow,
                    child: ClipOval(child: Image.asset("images/avatar.png")),
                    radius: 92,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Hi, I am ',
                        style: TextStyle(
                            fontSize:
                                ResponsiveFlutter.of(context).fontSize(1.5),
                            color: AppColors.appBlack,
                            fontFamily: AppFonts.poppinsBold,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: 'Abdul Hakeem',
                              style: TextStyle(
                                  fontSize:
                                      ResponsiveFlutter.of(context).fontSize(2),
                                  color: AppColors.appYellow,
                                  fontFamily: AppFonts.poppinsBold,
                                  fontWeight: FontWeight.bold))
                        ]),
                  ),
                  Text(
                    "Sr. Software Engineer (Android)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                      color: AppColors.appBlack,
                      fontFamily: AppFonts.poppinsBold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      Text('+971502490197'),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.email_rounded),
                      Text(' ahm.mhd78@gmail.com')
                    ],
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                ResponsiveFlutter.of(context).fontSize(0.8),
                            color: AppColors.appBlack,
                            fontFamily: AppFonts.poppinsBold,
                          ),
                          text: 'I am a forward-thinking developer with ',
                          children: [
                            TextSpan(
                                text: '6 Years ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.2),
                                  color: AppColors.appYellow,
                                  fontFamily: AppFonts.poppinsBold,
                                )),
                            TextSpan(
                                text:
                                    'of experience\nbuilding, integrating and supporting '),
                            TextSpan(
                                text: 'Android Applications ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.2),
                                  color: AppColors.appYellow,
                                  fontFamily: AppFonts.poppinsBold,
                                )),
                            TextSpan(
                                text:
                                    'for mobile devices.\n Currently living in '),
                            TextSpan(
                                text: 'Abu Dhabi (UAE)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(1.2),
                                  color: AppColors.appYellow,
                                  fontFamily: AppFonts.poppinsBold,
                                )),
                            TextSpan(
                                text:
                                    ', open to new roles for Sr. Software Engineer (Android).'),
                          ])),
                  SizedBox(
                    height: 32,
                  ),
                  RoundedButtonWithRightActionArrow('More About Me',Icons.arrow_forward),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageButton(
                        imageName: "ic_linkedin",
                        onTap: () {
                          launchURL(linkedInURL);
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ImageButton(
                        imageName: "ic_github",
                        onTap: () {
                          launchURL(gitHubURL);
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ImageButton(
                        imageName: "ic_stakeoverflow",
                        onTap: () {
                          launchURL(stakeOverFlowURL);
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ImageButton(
                        imageName: "ic_medium",
                        onTap: () {
                          launchURL(mediumURL);
                        },
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

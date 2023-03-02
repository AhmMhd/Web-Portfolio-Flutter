import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:portfolio/theme/AppFonts.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text(
                      "RESUME",
                      style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context).fontSize(6),
                          fontFamily: AppFonts.blackhansans,
                          color: Colors.white10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ABOUT",
                          style: TextStyle(
                              fontSize: ResponsiveFlutter.of(context).fontSize(3),
                              fontFamily: AppFonts.blackhansans,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          " ME",
                          style: TextStyle(
                              fontSize: ResponsiveFlutter.of(context).fontSize(3),
                              fontFamily: AppFonts.blackhansans,
                              fontWeight: FontWeight.bold,
                              color: AppColors.appYellow),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PERSONAL INFOS",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
                                    fontFamily: AppFonts.blackhansans,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 22,),
                              Row(
                                children: [
                                  Text(
                                    "First Name: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Abdul Hakeem",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Last Name: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Mehmood",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Age: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "30 years",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Phone: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "+92 3122494197",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Email: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "ahm.mhd78@gmail.com",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Nationality: ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1),
                                        fontFamily: AppFonts.blackhansans,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Pakistani 🇵🇰",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                                        fontFamily: AppFonts.blackhansans,
                                        color: AppColors.appYellow),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: TextStyle(
                                    fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
                                    fontFamily: AppFonts.blackhansans,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

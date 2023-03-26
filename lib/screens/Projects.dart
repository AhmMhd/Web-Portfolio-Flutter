import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../theme/AppColors.dart';
import '../theme/AppFonts.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12,),
              Text(
                "What I Have Built/Contributed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
                  color: AppColors.appYellow,
                  fontFamily: AppFonts.poppinsBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

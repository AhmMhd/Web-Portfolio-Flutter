import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/CustomWidgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/AppColors.dart';

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlack,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Abdul Hakeem Mehmood",
              style: TextStyle(
                fontFamily: 'YellowTail',
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ContactField(iconName: "ic_email",text: "ahm.mhd78@gmail.com",),
            SizedBox(height: 10,),
            ContactField(iconName: "ic_phone",text: "+92-312-2494197",),
            SizedBox(
              height: 30,
            ),
            SocialMediaRow()
          ],
        ),
      ),
    );
  }

}






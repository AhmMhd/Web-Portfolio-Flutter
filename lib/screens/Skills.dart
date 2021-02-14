import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/CustomWidgets.dart';

class Skills extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Text(
            "Skills",
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            child: IgnorePointer(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: screenSize.width/30),
                crossAxisCount: 5,
                crossAxisSpacing: screenSize.width/30,
                mainAxisSpacing: screenSize.width/30,
                children: [
                  SkillWidget(text: "Android",iconName: "ic_android",),
                  SkillWidget(text: "Java",iconName: "ic_java",),
                  SkillWidget(text: "Kotlin",iconName: "ic_kotlin",),
                  SkillWidget(text: "Dart",iconName: "ic_dart",),
                  SkillWidget(text: "Firebase",iconName: "ic_firebase",),
                  SkillWidget(text: "Flutter",iconName: "ic_flutter",),
                  SkillWidget(text: "Jenkins",iconName: "ic_jenkins",),
                  SkillWidget(text: "Android Jetpack",iconName: "ic_jetpack",),
                  SkillWidget(text: "Git",iconName: "ic_github",),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


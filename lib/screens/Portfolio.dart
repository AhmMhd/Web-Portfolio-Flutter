import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/FeatureProject.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../theme/AppColors.dart';
import '../theme/AppFonts.dart';

// ignore: must_be_immutable
class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "My Work",
            style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(2),
                color: AppColors.appBlack,
                fontFamily: AppFonts.poppinsBold,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 22,
          ),
          FeatureProject(
            images: [
              "images/portfolio/arabits-1.webp",
              "images/portfolio/arabits-2.webp",
              "images/portfolio/arabits-3.webp"
            ],
            contribution: [
              "Integrated a complete monetization module in the app to access premium content.",
              "Helped in improving application performance by fixing ANRs and Memory leaks.",
              "Integrated In-App updates.",
              " Helped in improving the overall architecture of the app.",
            ],
            projectDesc:
                "Learning Arabic just got easier! Arabits is a complete language learning system created by experienced education professionals & powered by state-of-the-art AI.",
            projectTitle: "Arabits",
            techStack: ["Kotlin","MVVM","Clean Architecture","Clean Code","Koin","Data Binding","Coroutines","Unit Test"],
          ),
          SizedBox(
            height: 22,
          ),
          FeatureProject(
              images: [
                "images/portfolio/airlift-1.webp",
                "images/portfolio/airlift-2.webp",
                "images/portfolio/airlift-3.webp"
              ],
              contribution: [
                "Worked on multiple CX-App features.",
                "Identifying and fixing tech-debt.",
                "Write clean and testable code.",
              ],
              projectDesc:
                  "Airlift makes life easier!\nNow you can shop everything in one place, and enjoy a quick 30-minute delivery right at your doorstep!",
              projectTitle: "Airlift",
              techStack: ["Kotlin","MVVM","Hilt","Room","Clean Architecture","Clean Code","Unit Test","Data Binding","Coroutines"]),
          SizedBox(
            height: 22,
          ),

          FeatureProject(
              images: [
                "images/portfolio/mm-1.webp",
                "images/portfolio/mm-2.webp",
                "images/portfolio/mm-3.webp"
              ],
              contribution: [
                "Created application from the scratch.",
                "Integrated Google route API for live tracking.",
                "Managed a team of 5 developers.",
              ],
              projectDesc:
                  "Purpose of this application is to validate the user’s information and location by a unique QR code which allows the Mischief Maker (admin) to track an actual presence of the user in an event.",
              projectTitle: "Mischief Maker",
              techStack: ["Java", "MVP","Dagger",]),

          SizedBox(
            height: 22,
          ),

          FeatureProject(
              images: [
                "images/portfolio/gh-1.webp",
                "images/portfolio/gh-2.webp",
                "images/portfolio/gh-3.webp"
              ],
              contribution: [
                "Created application from the scratch.",
                "Integrated Google route API for live tracking.",
                "Managed a team of 5 developers.",
              ],
              projectDesc:
              "Explore the world of fitness at your fingertips. Gymhub is the only gym-finder app in the world which is designed for everyone. Our goal is to do the work for you so you can do the workout.",
              projectTitle: "Gym Hub",
              techStack: ["Kotlin", "MVVM","Dagger2","Google Maps","Marker Clustering"]),
        ],
      ),
    );
  }
}

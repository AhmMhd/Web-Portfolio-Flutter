import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/content.dart';
import 'package:portfolio/util/utils.dart';
import '../theme/AppColors.dart';

// ignore: must_be_immutable
class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Projects",
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlayCurve: Curves.fastOutSlowIn,
              viewportFraction: isMobile() ? 0.8 : 0.5,
              height: isMobile() ? 300 : 400,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
            ),
            items: portfolioList,
          )
        ],
      ),
    );
  }
}

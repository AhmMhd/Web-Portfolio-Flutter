import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/content.dart';

// ignore: must_be_immutable
class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              viewportFraction: 0.4,
              height: 500,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
            ),
            items: portfolioList,
          )
        ],
      ),
    );
  }
}

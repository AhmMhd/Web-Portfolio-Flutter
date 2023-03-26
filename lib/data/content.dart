import 'package:portfolio/models/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/CustomWidgets.dart';
import 'package:portfolio/theme/AppColors.dart';

List<Widget> portfolioList = [
  PortfolioWidget(
      item: ItemPortfolio(
    color: Colors.blue[100],
    image: "ic_mm.webp",
    name: "Mischeif Maker",
    description:
        "The application provides a gamification and event management feature incorporated in its mobile application",
  )),
  PortfolioWidget(
      item: ItemPortfolio(
    color: Colors.blue[100],
    image: "ic_gymhub.png",
    name: "Gym Hub ",
    description:
        "The product GymRabbit aims to make the gyms available on the fly and automate the process of availing gym amenities wherever and whenever.",
  )),
  PortfolioWidget(
      item: ItemPortfolio(
          color: Colors.blue[100],
          image: "ic_dbk.webp",
          name: "DBK",
          description:
              "DBK is a licensed, insured and bondable commercial general contractor which delivers designs, builds commercial and multi-family residential structures")),
  PortfolioWidget(
      item: ItemPortfolio(
    color: Colors.blue[100],
    image: "ic_ttr.webp",
    name: "Ticket To Remember",
    description:
        "Ticket to Remember is a post event souvenir ticket keepsake, customized by you showcasing the moment you witnessed in person. it has your seat number or viewing location of exactly where you were at the event. It tells your story and creates a memory for a long- lasting connection with the event.",
  )),


  PortfolioWidget(
      item: ItemPortfolio(
        color: AppColors.appYellow,
        image: "ic_pvc.webp",
        name: "Pocket Voice Coach",
        description:"The Pocket Voice Coach was created to help you overcome the two most common speaking issues that hold you back from advancing in your career and in life — talking too fast and mumbling your message. Have fun testing your speed and pronunciation.",)),


  PortfolioWidget(
      item: ItemPortfolio(
        color: Colors.blue[100],
        image: "ic_sparkmember.webp",
        name: "Spark Member",
        description:"This app is for members and those who are interested in our award winning programs.",)),


  PortfolioWidget(
      item: ItemPortfolio(
        color: Colors.blue[100],
        image: "ic_sparktan.webp",
        name: "Sparktan",
        description:"The Sparktan App is designed for Staff Members and Business Owners to interact with Spark Membership on the go.",)),
];

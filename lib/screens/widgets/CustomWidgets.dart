import 'package:flutter/material.dart';
import 'package:portfolio/models/portfolio.dart';
import 'package:portfolio/theme/AppFonts.dart';
import 'package:portfolio/util/utils.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../../theme/AppColors.dart';

class ImageButton extends StatelessWidget {
  final String imageName;
  final Function onTap;

  ImageButton({@required this.imageName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.brown.withOpacity(0.5),
      child: Ink(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$imageName.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class SocialMediaRow extends StatelessWidget {
  final String linkedInURL =
      "https://www.linkedin.com/in/abdul-hakeem-mahmood-15112489/";
  final String mediumURL = "https://abdulhakeemahmoood.medium.com/";
  final String stakeOverFlowURL =
      "https://stackoverflow.com/users/5281486/abdul-hakeem-mahmood";
  final String gitHubURL = "https://github.com/AhmMhd";

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class PortfolioWidget extends StatelessWidget {
  final ItemPortfolio item;

  PortfolioWidget({@required this.item});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/${item.image}",
                  width: screenSize.width / 6,
                  height: screenSize.width / 6,
                ),
              ),
            ),
            Text(
              item.name,
              style: TextStyle(
                fontSize: isMobile()
                    ? ResponsiveFlutter.of(context).fontSize(2)
                    : ResponsiveFlutter.of(context).fontSize(2.5),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.description,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: isMobile()
                      ? ResponsiveFlutter.of(context).fontSize(
                          1.2,
                        )
                      : ResponsiveFlutter.of(context).fontSize(
                          1.5,
                        ),
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}

class SkillWidget extends StatelessWidget {
  final String iconName;
  final String text;

  SkillWidget({@required this.iconName, @required this.text});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
      elevation: 30,
      shadowColor: Colors.blue[100],
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.all(Radius.circular(6))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${iconName}.png',
              height: screenSize.width / 10,
              width: screenSize.width / 10,
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(
                  1.2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContactField extends StatelessWidget {
  final String iconName;
  final String text;

  ContactField({@required this.iconName, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/$iconName.png",
            width: 20,
            height: 20,
            color: Colors.black,
          ),
          Expanded(
            child: Text(
              this.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}

class RoundedButtonWithRightActionArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(32),
        width: 220,
        height: 48,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.appYellow),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              child: Text(
                "MORE ABOUT ME",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFonts.poppinsBold
                ),
              ),
            )),
            Container(
              width: 48,
              height: 48,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppColors.appYellow),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/models/portfolio.dart';
import 'package:portfolio/screens/MoreAboutMe.dart';
import 'package:portfolio/screens/Portfolio.dart';
import 'package:portfolio/screens/Projects.dart';
import 'package:portfolio/theme/AppFonts.dart';
import 'package:portfolio/util/AppNavigator.dart';
import 'package:portfolio/util/utils.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'dart:developer' as developer;
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
        height: 42,
        width: 42,
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

    return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage('images/portfolio/arabits-1.webp'),
            width: 200,height: 600,),
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

class _RoundedButtonWithRightActionArrowState
    extends State<RoundedButtonWithRightActionArrow> {
  bool _isMouseHover = false;
  String _text;
  IconData _icon;

  _RoundedButtonWithRightActionArrowState(String text, IconData icon){
    _text = text;
    _icon = icon;
  }

  void _handleHover(bool newValue) {
    _isMouseHover = newValue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      onHover: _handleHover,
      // hoverColor: AppColors.appYellow,
      child: Container(
          width: 220,
          height: 48,
          decoration: BoxDecoration(
              color: (_isMouseHover) ? AppColors.appYellow : AppColors.appBlack,
              border: Border.all(color: AppColors.appYellow),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                child: Text(
                  _text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFonts.poppinsBold),
                ),
              )),
              Container(
                width: 48,
                height: 48,
                child: Icon(
                  _icon,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColors.appYellow),
              )
            ],
          )),
    );
  }
}

class RoundedButtonWithRightActionArrow extends StatefulWidget {
  String _text;
  IconData _icon;
  RoundedButtonWithRightActionArrow(@required String text,@required IconData icon){
    _text = text;
    _icon = icon;
  }

  @override
  State<StatefulWidget> createState() =>
      _RoundedButtonWithRightActionArrowState(_text,_icon);
}



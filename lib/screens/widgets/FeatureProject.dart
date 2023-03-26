import 'package:flutter/material.dart';
import 'package:portfolio/theme/AppColors.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../../theme/AppFonts.dart';
import 'CustomText.dart';

class FeatureProject extends StatelessWidget {
  final String projectTitle;
  final String projectDesc;
  final List<String> techStack;
  final List<String> contribution;
  final List<String> images;

  FeatureProject(
      {this.projectDesc,
      this.projectTitle,
      this.techStack,
      this.contribution,
      this.images});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ProjectMediaClip(size),
            SizedBox(
              width: 22,
            ),
            ProjectDescriptionView(context, size, techStack)
          ]),
        ],
      ),
    );
  }

  Column ProjectDescriptionView(
      BuildContext context, Size size, List<String> techStack) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(
              image: AssetImage('images/ic_dot.png'),
              width: 16,
              height: 16,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'My Contribution',
              style: TextStyle(
                  fontSize: ResponsiveFlutter.of(context).fontSize(1.2),
                  color: AppColors.appBlack,
                  fontFamily: AppFonts.poppinsBold,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 32,
            ),
            Container(
                width: size.width * 0.4,
                child: populateContributionList(contribution))
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Image(
              image: AssetImage('images/ic_dot.png'),
              width: 16,
              height: 16,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Tech Stack',
              style: TextStyle(
                  fontSize: ResponsiveFlutter.of(context).fontSize(1.4),
                  color: AppColors.appBlack,
                  fontFamily: AppFonts.poppinsBold,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 32,
            ),
            Container(
              width: size.width * 0.4,
              child: populateTechSkills(techStack),
            )
          ],
        ),
      ],
    );
  }

  ClipRRect ProjectMediaClip(Size size) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: size.height * 0.40,
        width: size.width * 0.4,
        color: AppColors.appYellow,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Padding(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(images[0]),
                      ),
                    ),
                    padding: EdgeInsets.all(12),
                  ),
                ),
                Padding(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(images[1]),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                ),
                Padding(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(images[2]),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                ),
              ],
            ),
            Positioned(
              child: Container(
                color: AppColors.projectDescriptionBackgroundColor,
                width: size.width * 0.4,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: projectTitle,
                        textsize: 18,
                        color: AppColors.appWhite,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                      ),
                      Container(
                        child: Wrap(
                          alignment: WrapAlignment.end,
                          children: [
                            CustomText(
                              text: projectDesc,
                              textsize: 14,
                              color: AppColors.appWhite,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }

  Widget populateTechSkills(List<String> strings) {
    return new Wrap(
        alignment: WrapAlignment.start,
        children: strings.map((item) => new TechStack(item)).toList());
  }

  Widget populateContributionList(List<String> strings) {
    return new Wrap(
        alignment: WrapAlignment.start,
        children: strings.map((item) => new UnorderedListItem(item)).toList());
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• "),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}

class TechStack extends StatelessWidget {
  TechStack(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 12, right: 12, bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.appYellow),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          child: Text(text),
        ),
      ),
    );
  }
}

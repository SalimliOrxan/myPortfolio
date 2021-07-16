import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

import 'apps.dart';
import 'components/hireme_card.dart';
import 'components/section_title.dart';
import 'constants.dart';
import 'item_app.dart';

class SectionApp extends StatelessWidget {

  const SectionApp();

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
            margin: EdgeInsets.only(top: kDefaultPadding * 3),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF7E8FF).withOpacity(0.3),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/recent_work_bg.png"),
              ),
            ),
            child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -80),
                    child: HireMeCard(),
                  ),
                  SectionTitle(
                    title: "Recent Works",
                    subTitle: "My Strong Arenas",
                    color: Color(0xFFFFB100),
                  ),
                  SizedBox(height: kDefaultPadding * 1.5),
                  SizedBox(
                      width: double.infinity,
                      child: Wrap(
                          spacing: kDefaultPadding,
                          runSpacing: kDefaultPadding * 2,
                          children: List.generate(
                            recentWorks.length, (index) => RecentWorkCard(index: index, press: () {}),
                          )
                      )
                  ),
                  SizedBox(height: kDefaultPadding * 5)
                ]
            )
        ),
        tablet: Container(
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF7E8FF).withOpacity(0.3),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png")
            )
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -80),
                child: HireMeCard()
              ),
              SectionTitle(
                title: "Recent Works",
                subTitle: "My Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    recentWorks.length, (index) => RecentWorkCard(index: index, press: () {}),
                  ),
                )
              ),
              SizedBox(height: kDefaultPadding * 5)
            ]
          )
        ),
        desktop: Container(
          margin: EdgeInsets.only(top: kDefaultPadding * 6),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF7E8FF).withOpacity(0.3),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/recent_work_bg.png"),
            ),
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -80),
                child: HireMeCard(),
              ),
              SectionTitle(
                title: "Recent Works",
                subTitle: "My Strong Arenas",
                color: Color(0xFFFFB100),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              SizedBox(
                width: 1100,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    recentWorks.length, (index) => RecentWorkCard(index: index, press: () {}),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 5),
            ],
          )
        )
    );
  }
}
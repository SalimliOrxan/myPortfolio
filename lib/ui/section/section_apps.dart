import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/components/hireme_card.dart';
import 'package:my_portfolio/ui/components/section_title.dart';
import 'package:my_portfolio/ui/responsive.dart';

import '../../data/apps.dart';
import '../../data/constants.dart';
import '../items/item_app.dart';

class SectionApp extends StatelessWidget {

  const SectionApp();

  @override
  Widget build(BuildContext context) {
    final bool isTabletMini = Responsive.isTabletMin(context);

    return Responsive(
        mobile: Container(
            margin: EdgeInsets.only(top: kDefaultPadding * 3),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF7E8FF).withOpacity(0.3),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/recent_work_bg.png"),
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
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: recentWorks.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 3.5,
                          mainAxisSpacing: kDefaultPadding
                      ),
                      shrinkWrap: true,
                      itemBuilder: (_, int index) => RecentWorkCard(index: index, press: () {})
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
                color: Color(0xFFFFB100)
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: recentWorks.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isTabletMini ? 1 : 2,
                      childAspectRatio: isTabletMini ? 3.5 : 2.5,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisSpacing: kDefaultPadding
                  ),
                  shrinkWrap: true,
                  itemBuilder: (_, int index) => RecentWorkCard(index: index, press: () {})
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
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: recentWorks.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.5,
                        crossAxisSpacing: kDefaultPadding,
                        mainAxisSpacing: kDefaultPadding
                    ),
                    shrinkWrap: true,
                    itemBuilder: (_, int index) => RecentWorkCard(index: index, press: () {})
                ),
              ),
              SizedBox(height: kDefaultPadding * 5)
            ]
          )
        )
    );
  }
}
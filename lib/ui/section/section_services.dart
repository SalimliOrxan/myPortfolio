import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/components/section_title.dart';
import 'package:my_portfolio/ui/responsive.dart';

import '../../data/constants.dart';
import '../items/service_card.dart';
import '../../data/services.dart';

class SectionService extends StatelessWidget {

  const SectionService();

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
            margin: EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding * 3),
            width: double.infinity,
            child: Column(
                children: [
                  SectionTitle(
                    color: Color(0xFFFF0000),
                    title: "Offering Services",
                    subTitle: "My Strong Arenas",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: services.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            crossAxisSpacing: kDefaultPadding
                        ),
                        shrinkWrap: true,
                        itemBuilder: (_, int index) => ServiceCard(index: index)
                    )
                  )
                ]
            )
        ),
        tablet: Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            child: Column(
                children: [
                  SectionTitle(
                    color: Color(0xFFFF0000),
                    title: "Offering Services",
                    subTitle: "My Strong Arenas",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: services.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            crossAxisSpacing: kDefaultPadding
                        ),
                        shrinkWrap: true,
                        itemBuilder: (_, int index) => ServiceCard(index: index)
                    ),
                  )
                ]
            )
        ),
        desktop: Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            constraints: BoxConstraints(maxWidth: 1110),
            child: Column(
                children: [
                  SectionTitle(
                    color: Color(0xFFFF0000),
                    title: "Offering Services",
                    subTitle: "My Strong Arenas",
                  ),
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(kDefaultPadding),
                    itemCount: services.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisSpacing: 2 * kDefaultPadding
                    ),
                    shrinkWrap: true,
                    itemBuilder: (_, int index) => ServiceCard(index: index)
                  )
                ]
            )
        )
    );
  }
}
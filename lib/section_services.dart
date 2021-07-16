import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

import 'components/section_title.dart';
import 'constants.dart';
import 'service_card.dart';
import 'services.dart';

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
                Column(
                    children: List.generate(services.length, (index) => ServiceCard(index: index))
                )
              ]
          )
      ),
      tablet: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          constraints: BoxConstraints(maxWidth: 1110),
          child: Column(
              children: [
                SectionTitle(
                  color: Color(0xFFFF0000),
                  title: "Offering Services",
                  subTitle: "My Strong Arenas",
                ),
                Wrap(
                    direction: Axis.horizontal,
                    spacing: 20,
                    children: List.generate(services.length, (index) => ServiceCard(index: index))
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(services.length, (index) => ServiceCard(index: index))
                )
              ]
          )
      )
    );
  }
}
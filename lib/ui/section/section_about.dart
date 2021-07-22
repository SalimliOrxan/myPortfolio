import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/components/my_outline_button.dart';
import 'package:my_portfolio/ui/responsive.dart';

import '../items/card_experience.dart';
import '../../data/constants.dart';

class SectionAbout extends StatelessWidget {

  const SectionAbout();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: Responsive.isMobile(context) ? double.infinity : Responsive.isTablet(context) ? 650 : 1100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExperienceCard(numOfExp: "03"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et',
                      style: TextStyle(
                          fontSize: Responsive.isMobile(context) ? 12 : 20, fontWeight: FontWeight.w200, color: Color(0xFF707070), height: 2),
                    ),
                  )
                ),
              ],
            ),
            SizedBox(height: 20 * 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyOutlineButton(
                  imageSrc: "assets/images/ic_handshake.svg",
                  text: "Hire Me!",
                  press: () {},
                )
              ]
            )
          ]
        )
    );
  }
}
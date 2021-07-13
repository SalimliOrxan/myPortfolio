import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

import '../constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            constraints: BoxConstraints(
                maxWidth: double.infinity
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: SizedBox(
                    height: 30,
                    child: VerticalDivider(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/hand.png",
                  press: () {},
                )
              ],
            ),
          ),
        ),
        tablet: Container(
          padding: EdgeInsets.all(kDefaultPadding * 2),
          constraints: BoxConstraints(
              maxWidth: 650
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/email.png",
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: SizedBox(
                  height: 80,
                  child: VerticalDivider(),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Starting New Project?",
                      style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "Get an estimate for the new project",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
              DefaultButton(
                text: "Hire Me!",
                imageSrc: "assets/images/hand.png",
                press: () {},
              )
            ],
          ),
        ),
        desktop: Container(
          padding: EdgeInsets.all(kDefaultPadding * 2),
          constraints: BoxConstraints(
              maxWidth: 1100
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/email.png",
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: SizedBox(
                  height: 80,
                  child: VerticalDivider(),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Starting New Project?",
                      style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "Get an estimate for the new project",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
              DefaultButton(
                text: "Hire Me!",
                imageSrc: "assets/images/hand.png",
                press: () {},
              )
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/data/constants.dart';
import 'package:my_portfolio/ui/responsive.dart';
import 'package:flutter_svg/svg.dart';

import 'default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
              boxShadow: [kDefaultShadow]
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/ic_email.svg', height: 30, width: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Container(
                    height: 30,
                    width: 0.1,
                    color: Colors.grey
                  )
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starting New Project?",
                        style: TextStyle(fontSize: size.width * 0.025, fontWeight: FontWeight.bold)
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "Get an estimate for the new project",
                        style: TextStyle(fontSize: size.width * 0.023, fontWeight: FontWeight.w200)
                      )
                    ],
                  ),
                ),
                DefaultButton(
                  text: "Hire Me!",
                  imageSrc: "assets/images/ic_handshake.svg",
                  press: () {},
                )
              ]
            )
          )
        ),
        tablet: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          constraints: BoxConstraints(
              maxWidth: 600
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/ic_email.svg",
                height: 50,
                width: 50
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Container(
                      height: 50,
                      width: 0.5,
                      color: Colors.grey
                  )
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Starting New Project?",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      "Get an estimate for the new project",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200)
                    )
                  ]
                )
              ),
              DefaultButton(
                text: "Hire Me!",
                imageSrc: "assets/images/ic_handshake.svg",
                press: () {},
              )
            ],
          )
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
              SvgPicture.asset(
                  "assets/images/ic_email.svg",
                  height: 80,
                  width: 80
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Container(
                      height: 80,
                      width: 0.5,
                      color: Colors.grey
                  )
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
                imageSrc: "assets/images/ic_handshake.svg",
                press: () {},
              )
            ],
          ),
        )
    );
  }
}
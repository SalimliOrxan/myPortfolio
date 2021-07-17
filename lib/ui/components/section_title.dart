import 'package:flutter/material.dart';
import 'package:my_portfolio/data/constants.dart';
import 'package:my_portfolio/ui/responsive.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          width: double.infinity,
          height: 70,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: kDefaultPadding),
                padding: EdgeInsets.only(bottom: 50),
                width: 8,
                height: 70,
                color: Colors.black,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color
                  )
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    subTitle,
                    style:
                    TextStyle(fontSize: Responsive.isMobileMin(context) ? 16 : 20, fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                  Text(
                    title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: Responsive.isMobileMin(context) ? 26 : 30, fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ]
              )
            ]
          )
        ),
        tablet: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          width: double.infinity,
          height: 85,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: kDefaultPadding),
                padding: EdgeInsets.only(bottom: 50),
                width: 8,
                height: 85,
                color: Colors.black,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    subTitle,
                    style:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                  Text(
                    title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
        desktop: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          constraints: BoxConstraints(maxWidth: 1110),
          height: 100,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: kDefaultPadding),
                padding: EdgeInsets.only(bottom: 72),
                width: 8,
                height: 100,
                color: Colors.black,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    subTitle,
                    style:
                    TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
                  ),
                  Text(
                    title,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';

import 'apps.dart';
import 'constants.dart';

class RecentWorkCard extends StatefulWidget {

  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: InkWell(
        onTap: () => widget.press(),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: Row(
              children: [
                Container(
                    constraints: BoxConstraints(
                        maxHeight: 220,
                        maxWidth: 200
                    ),
                    child: Image.asset(recentWorks[widget.index].image, fit: BoxFit.cover)
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(recentWorks[widget.index].category.toUpperCase()),
                        Text(
                          recentWorks[widget.index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(height: 1.5, fontSize: 16),
                        ),
                        Text(
                          "View Details",
                          style: TextStyle(decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      tablet: InkWell(
        onTap: () => widget.press(),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 220,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: Row(
              children: [
                Container(
                    constraints: BoxConstraints(
                        maxHeight: 220,
                        maxWidth: 350
                    ),
                    child: Image.asset(recentWorks[widget.index].image, fit: BoxFit.cover)
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(recentWorks[widget.index].category.toUpperCase()),
                        Text(
                          recentWorks[widget.index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(height: 1.5, fontSize: 16),
                        ),
                        Text(
                          "View Details",
                          style: TextStyle(decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      desktop: InkWell(
        onTap: () => widget.press(),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 320,
          width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Container(
                  constraints: BoxConstraints(
                      maxHeight: 320,
                      maxWidth: 540
                  ),
                  child: Image.asset(recentWorks[widget.index].image, fit: BoxFit.cover)
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(recentWorks[widget.index].category.toUpperCase()),
                      Text(
                        recentWorks[widget.index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(height: 1.5, fontSize: 30),
                      ),
                      Text(
                        "View Details",
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
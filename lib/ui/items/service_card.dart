import 'package:flutter/material.dart';
import 'package:my_portfolio/data/services.dart';

import '../../data/constants.dart';
import '../responsive.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final isMobileMin = Responsive.isMobileMin(context);

    return Responsive(
      mobile: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: isMobileMin ? 90 : 110,
          width: MediaQuery.of(context).size.width - kDefaultPadding * 2,
          decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                  duration: duration,
                  padding: EdgeInsets.all(kDefaultPadding),
                  height: isMobileMin ? 70 : 90,
                  width: isMobileMin ? 70 : 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.1),
                        ),
                    ],
                  ),
                  child: services[widget.index].icon
              ),
              SizedBox(),
              Row(
                children: [
                  if(services[widget.index].iconPrefix != null)
                    Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding / 2),
                      child: services[widget.index].iconPrefix!
                    ),
                  Text(
                      services[widget.index].title,
                      style: TextStyle(fontSize: isMobileMin ? 14 : 18)
                  )
                ]
              ),
              SizedBox()
            ]
          )
        )
      ),
      tablet: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: duration,
                  padding: EdgeInsets.all(kDefaultPadding * 1.5),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.1),
                        ),
                    ],
                  ),
                  child: services[widget.index].icon
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                services[widget.index].title,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      desktop: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          height: 256,
          width: 256,
          decoration: BoxDecoration(
            color: services[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: duration,
                  padding: EdgeInsets.all(kDefaultPadding * 1.5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.1),
                        ),
                    ],
                  ),
                  child: services[widget.index].icon
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                services[widget.index].title,
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      )
    );
  }
}
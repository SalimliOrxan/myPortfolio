import 'package:flutter/material.dart';
import 'package:my_portfolio/glass.dart';
import 'package:my_portfolio/responsive.dart';

import 'menu.dart';

class SectionHead extends StatelessWidget {

  final ScrollController controllerScroll;

  SectionHead({
    Key? key,
    required this.controllerScroll
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Responsive(
        mobile: Container(
            alignment: Alignment.center,
            height: size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background.png")
                )
            ),
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 0,
                          child: IconButton(
                              icon: Icon(Icons.menu, color: Colors.white),
                              onPressed: () => Scaffold.of(context).openDrawer()
                          )
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Glass(),
                            Spacer(flex: 3)
                          ]
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset("assets/images/person.png", height: size.height * 0.3),
                      )
                    ]
                )
            )
        ),
        tablet: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background.png")
                )
            ),
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Glass(),
                            Spacer(flex: 3)
                          ]
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset("assets/images/person.png", height: size.height * 0.7, width: size.width * 0.2),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Menu(controllerScroll: controllerScroll)
                      )
                    ]
                )
            )
        ),
        desktop: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background.png")
                )
            ),
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Glass(),
                            Spacer(flex: 3)
                          ]
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset("assets/images/person.png", height: size.height * 0.7, width: size.width * 0.2),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Menu(controllerScroll: controllerScroll)
                      )
                    ]
                )
            )
        )
    );
  }
}
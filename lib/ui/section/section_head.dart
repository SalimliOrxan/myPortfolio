import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/glass.dart';
import 'package:my_portfolio/ui/responsive.dart';

import '../menu.dart';

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
            height: size.height * 0.5,
            width: double.infinity,
            child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/background.png")
                          )
                      )
                  ),
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
                  )
                ]
            )
        ),
        tablet: Container(
            height: size.height * 0.5,
            width: double.infinity,
            child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/background.png")
                          )
                      )
                  ),
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
                  )
                ]
            )
        ),
        desktop: Container(
            constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
            child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/background.png")
                          )
                      )
                  ),
                  Glass(),
                  Positioned(
                      bottom: 0,
                      child: Menu(controllerScroll: controllerScroll)
                  )
                ]
            )
        )
    );
  }
}
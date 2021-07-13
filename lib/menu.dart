import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/responsive.dart';

class Menu extends StatefulWidget {
  final ScrollController controllerScroll;
  const Menu({required this.controllerScroll});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Contacts"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Responsive(
      mobile: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 50),
                blurRadius: 50,
                color: Color(0xFF0700B1).withOpacity(0.15),
              )
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(menuItems.length, (index) => buildMenuItem(index))
        )
      ),
      tablet: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: size.width * 0.4),
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 50),
                blurRadius: 50,
                color: Color(0xFF0700B1).withOpacity(0.15),
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              menuItems.length, (index) => buildMenuItem(index)
          ),
        ),
      ),
      desktop: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: size.width * 0.4),
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 50),
                blurRadius: 50,
                color: Color(0xFF0700B1).withOpacity(0.15),
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              menuItems.length, (index) => buildMenuItem(index)
          )
        )
      )
    );
  }

  Widget buildMenuItem(int index){
    double position = 0;
    switch(index){
      case 0:
        position = widget.controllerScroll.position.minScrollExtent;
        break;
      case 1:
        position = widget.controllerScroll.position.maxScrollExtent * 0.15;
        break;
      case 2:
        position = widget.controllerScroll.position.maxScrollExtent * 0.29;
        break;
      case 3:
        position = widget.controllerScroll.position.maxScrollExtent * 0.57;
        break;
      case 4:
        position = widget.controllerScroll.position.maxScrollExtent;
        break;
    }

    return Responsive(
        mobile: InkWell(
            onTap: (){
              setState(() {
                Navigator.pop(context);
                selectedIndex = index;

                widget.controllerScroll.animateTo(
                    position,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300)
                );
              });
            },
            child: Padding(
                padding: const EdgeInsets.only(top: kDefaultPadding * 3),
                child: Text(
                  menuItems[index],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
            )
        ),
        tablet: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;

              widget.controllerScroll.animateTo(
                  position,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300)
              );
            });
          },
          onHover: (value) {
            setState(() {
              value ? hoverIndex = index : hoverIndex = selectedIndex;
            });
          },
          child: Container(
            constraints: BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(fontSize: 20, color: Color(0xFF707070)),
                ),
                // Hover
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                  selectedIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset("assets/images/hover.png"),
                ),
                // Select
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectedIndex == index ? -2 : -32,
                  child: Image.asset("assets/images/hover.png"),
                ),
              ],
            ),
          ),
        ),
        desktop: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;

              widget.controllerScroll.animateTo(
                  position,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300)
              );
            });
          },
          onHover: (value) {
            setState(() {
              value ? hoverIndex = index : hoverIndex = selectedIndex;
            });
          },
          child: Container(
            constraints: BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(fontSize: 20, color: Color(0xFF707070)),
                ),
                // Hover
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                  selectedIndex != index && hoverIndex == index ? -20 : -32,
                  child: Image.asset("assets/images/hover.png"),
                ),
                // Select
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectedIndex == index ? -2 : -32,
                  child: Image.asset("assets/images/hover.png"),
                ),
              ],
            ),
          ),
        )
    );
  }
}
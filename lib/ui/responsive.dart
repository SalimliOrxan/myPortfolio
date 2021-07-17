import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobileMin(BuildContext context) => MediaQuery.of(context).size.width <= 360;
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 650;
  static bool isTabletMin(BuildContext context) => MediaQuery.of(context).size.width < 800 && MediaQuery.of(context).size.width >= 650;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if(size.width >= 1100) {
      return desktop;
    }
    else if (size.width >= 650) {
      return tablet;
    }
    return mobile;
  }
}
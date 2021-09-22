import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Service {
  final int id;
  final String title;
  final Color color;
  final Widget icon;
  final Widget? iconPrefix;

  Service({
    required this.id,
    required this.title,
    required this.color,
    required this.icon,
    this.iconPrefix
  });
}

List<Service> services = [
  Service(
    id: 1,
    title: "Native Kotlin Android",
    icon: SvgPicture.asset("assets/images/ic_kotlin.svg", height: 50, width: 60, fit: BoxFit.contain),
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Native Java Android",
    icon: SvgPicture.asset("assets/images/ic_java.svg", fit: BoxFit.contain),
    color: Color(0xFFFFE0E0),
  ),
  Service(
    id: 3,
    title: "Flutter Android",
    icon: SvgPicture.asset("assets/images/ic_android.svg", height: 50, width: 60, fit: BoxFit.cover),
    iconPrefix: SvgPicture.asset("assets/images/ic_flutter.svg", width: 18, height: 18, fit: BoxFit.cover),
    color: Color(0xFFE4FFC7),
  ),
  Service(
      id: 4,
      title: "Flutter Ios",
      icon: SvgPicture.asset("assets/images/ic_ios.svg", height: 50, width: 60, fit: BoxFit.contain),
      iconPrefix: SvgPicture.asset("assets/images/ic_flutter.svg", width: 18, height: 18, fit: BoxFit.cover),
      color: Color(0xFFFFF3DD)
  )
];
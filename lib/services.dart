import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
    icon: WebsafeSvg.asset("assets/images/ic_kotlin.svg", width: 50, height: 50, fit: BoxFit.cover),
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Native Java Android",
    icon: WebsafeSvg.asset("assets/images/ic_java.svg", width: 50, height: 50, fit: BoxFit.cover),
    color: Color(0xFFFFE0E0),
  ),
  Service(
    id: 3,
    title: "Flutter Android",
    icon: WebsafeSvg.asset("assets/images/ic_android.svg", width: 50, height: 50, fit: BoxFit.cover),
    iconPrefix: WebsafeSvg.asset("assets/images/ic_flutter.svg", width: 18, height: 18, fit: BoxFit.cover),
    color: Color(0xFFE4FFC7),
  ),
  Service(
      id: 4,
      title: "Flutter Ios",
      icon: WebsafeSvg.asset("assets/images/ic_ios.svg", width: 50, height: 50),
      iconPrefix: WebsafeSvg.asset("assets/images/ic_flutter.svg", width: 18, height: 18, fit: BoxFit.cover),
      color: Color(0xFFFFF3DD)
  )
];
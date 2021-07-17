import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/section/home_page.dart';

const String HOME = 'home';

Route<dynamic> routes(RouteSettings setting){
  switch(setting.name){
    case HOME: return MaterialPageRoute(builder: (_) => MyHomePage(), settings: setting);
    default: return MaterialPageRoute(builder: (_) => MyHomePage(), settings: setting);
  }
}
import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/menu.dart';
import 'package:my_portfolio/ui/section/section_about.dart';
import 'package:my_portfolio/ui/section/section_apps.dart';
import 'package:my_portfolio/ui/section/section_contact.dart';
import 'package:my_portfolio/ui/section/section_head.dart';
import 'package:my_portfolio/ui/section/section_services.dart';

import '../../data/constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _controllerScroll = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Menu(controllerScroll: _controllerScroll)),
      body: SingleChildScrollView(
        controller: _controllerScroll,
        child: Column(
          children: [
            SectionHead(controllerScroll: _controllerScroll),
            SizedBox(height: kDefaultPadding * 2),
            SectionAbout(),
            SectionService(),
            SectionApp(),
            SizedBox(height: kDefaultPadding),
            SectionContact()
          ]
        )
      )
    );
  }
}
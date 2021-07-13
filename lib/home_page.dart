import 'package:flutter/material.dart';
import 'package:my_portfolio/menu.dart';
import 'package:my_portfolio/section_about.dart';
import 'package:my_portfolio/section_apps.dart';
import 'package:my_portfolio/section_contact.dart';
import 'package:my_portfolio/section_head.dart';
import 'package:my_portfolio/section_services.dart';

import 'constants.dart';
import 'responsive.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final controllerScroll = ScrollController();

    return Scaffold(
      drawer: Responsive.isMobile(context) ? Drawer(child: Menu(controllerScroll: controllerScroll)) : null,
      body: SingleChildScrollView(
        controller: controllerScroll,
        child: Column(
          children: [
            SectionHead(controllerScroll: controllerScroll),
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
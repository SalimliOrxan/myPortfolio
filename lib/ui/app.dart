import 'package:flutter/material.dart';
import 'package:my_portfolio/data/routes.dart';

import 'section/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Portfolio',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
        onGenerateRoute: routes
    );
  }
}
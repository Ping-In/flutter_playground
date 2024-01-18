// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:test_app/pages/first_page.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/pages/second_page.dart';
import 'package:test_app/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ['Niels', 'Sharon', 'Mike', 'Conner'];

  var logger = Logger();

  void userTapped() {
    logger.i("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
        '/homePage': (context) => HomePage(),
        '/settingsPage': (context) => SettingsPage(),
      },
    );
  }
}

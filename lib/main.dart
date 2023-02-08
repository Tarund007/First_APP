
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sliding%20screen%202.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/link.dart';
import 'package:flutter_application_1/projects.dart';

import 'Sliding screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "soho"),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => Myhome(),
      'about' :(context) => MyAbout(),
      'projects': (context)=> Myprojects(),
      'Sliding screen': (context)=> introductionscreen(),
      'Sliding screen 2': (context)=> Intro2(),
      'link':(context)=> weblink()
    },
  ));
}

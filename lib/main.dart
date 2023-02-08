import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'about',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => Myhome(),
      'about' :(context) => MyAbout()
    },
  ));
}

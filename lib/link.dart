import 'package:flutter/material.dart';

class weblink extends StatefulWidget {
  const weblink({Key? key}) : super(key: key);

  @override
  State<weblink> createState() => _weblinkState();
}

class _weblinkState extends State<weblink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("My Home link"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("open link"),
          onPressed: () {
            Navigator.pushNamed(context, 'weblink');

          },
        ),
      ),
    );
  }
}


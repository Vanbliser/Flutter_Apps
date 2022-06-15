// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _opacity = 0;

  void animateOpacity() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _opacity = 1;
    });
  }

  @override
  void initState() {
    animateOpacity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Animations')),
        body: Center(
          child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: CircleAvatar(
                radius: 75,
              )),
        ));
  }
}

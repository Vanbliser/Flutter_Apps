// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  State<AnimatedOpacityPage> createState() => _Animationpage();
}

class _Animationpage extends State<AnimatedOpacityPage> {
  double _opacity = 0;

  void animateOpacity() {
    setState(() {
      if (_opacity == 0)
        _opacity = 1;
      else
        _opacity = 0;
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
      appBar: AppBar(title: Text('Animated Opacity')),
      floatingActionButton: FloatingActionButton(
        onPressed: animateOpacity,
        child: Icon(Icons.play_arrow),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 1),
          opacity: _opacity,
          child: CircleAvatar(
            radius: 75,
          ),
        ),
      ),
    );
  }
}

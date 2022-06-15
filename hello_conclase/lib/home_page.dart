// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo Home Page')),
      floatingActionButton:
          FloatingActionButton(onPressed: increment, child: Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 14),
              textDirection: TextDirection.rtl,
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 40),
              textDirection: TextDirection.rtl,
            )
          ],
        ),
      ),
    );
  }
}

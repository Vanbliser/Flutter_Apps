import 'package:flutter/material.dart';
import 'package:flutter_application_2/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        canvasColor: Colors.white,
        brightness: Brightness.light,

      ),
      home: HomePage(),
    );
  }
}

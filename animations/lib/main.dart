import 'package:flutter/material.dart';

import 'app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            canvasColor: Colors.white, primarySwatch: Colors.blueGrey),
        home: Homepage());
  }
}

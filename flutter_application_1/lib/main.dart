import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route.dart';
import 'package:flutter_application_1/app/screens/homepage/homepage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: routes[settings.name]!,
      ),
      theme: ThemeData(
        canvasColor: Color(0xffffffff),
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/homepage/widget/homeWidget.dart';
import '../../route/route-names.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.count(
          crossAxisCount: 3,
          // mainAxisSpacing: .0,
          // crossAxisSpacing: 30,
          children: [
            HomeCard(pagename: RouteNames.basicpage, title: 'Basics'),
            HomeCard(pagename: RouteNames.animationHome, title: 'Animations'),
            HomeCard(pagename: RouteNames.builderPage, title: 'Builder',),
            HomeCard(pagename: RouteNames.apiPage, title: "API's",),
            HomeCard(pagename: RouteNames.riverpodPage, title: "RiverPod",)
          ],
        ),
      ),
    );
  }
}

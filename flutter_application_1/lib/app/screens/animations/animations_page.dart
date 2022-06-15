import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route-names.dart';
import 'package:flutter_application_1/app/screens/animations/widget/animation_item_card.dart';

class AnimationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: ListView(
        children: [
          AnimationsItemCard(
              pagename: RouteNames.animations, title: 'Animated Opacity'),
          AnimationsItemCard(
              pagename: RouteNames.fadeTransition, title: 'Fade Transition'),
          AnimationsItemCard(
              pagename: RouteNames.scaleTransition, title: 'Scale Transition')
        ],
      ),
    );
  }
}

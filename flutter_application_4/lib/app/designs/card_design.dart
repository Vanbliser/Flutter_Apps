import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/Column_design.dart';

class CardDesign extends StatelessWidget {
  List<Widget> children;
  CardDesign({required this.children});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: EdgeInsets.only(top: 30),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: ColumnDesign(children: children)),
      ),
    );
  }
}

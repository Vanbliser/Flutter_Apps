import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/basicpage/cardcolumn.dart';

class CardClass extends StatelessWidget {
  final String text, step, left;
  final IconData iconss;
  final Color colorr;
  CardClass(
      {required this.text,
      required this.step,
      required this.left,
      required this.colorr,
      required this.iconss});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: colorr,
      elevation: 0,
      child: SizedBox(
        height: 180,
        width: 140,
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
            ),
            child: CardColumn(
              iconss: iconss,
              colorr: colorr,
              text: text,
              step: step,
              left: left,
            )),
      ),
    );
  }
}

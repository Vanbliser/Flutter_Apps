import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/basicpage/card.dart';

class CardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardClass(
          text: 'Education',
          step: '02 Steps',
          left: 'Left',
          iconss: Icons.school_sharp,
          colorr: Color(0xff9bd6f2),
        ),
        SizedBox(
          width: 5,
        ),
        CardClass(
          text: 'Professional',
          step: '04 Steps',
          left: 'Left',
          iconss: Icons.arrow_right_alt_rounded,
          colorr: Color(0xfff6be82),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/screen/home/home_widgets/colText.dart';
import 'colButton.dart';

class HomeCols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColBigText(data: 'Task Management'),
          ColBigText(data: 'Made Simple'),
          SizedBox(height: 25),
          ColSmallText(data: 'Task management with the most Convenient'),
          ColSmallText(data: 'flow at this time, making your work easier'),
          ColSmallText(data: 'and simpler.'),
          SizedBox(height: 40),
          ColButton(data: 'Get Started Now')
        ],
      ),
    );
  }
}

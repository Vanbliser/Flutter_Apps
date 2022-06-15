import 'package:flutter/material.dart';

class ColumnApplied extends StatelessWidget {
  final String text, number;
  ColumnApplied({required this.text, required this.number});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 14),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]);
  }
}

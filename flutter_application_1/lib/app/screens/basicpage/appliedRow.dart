import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/basicpage/appliedColumn.dart';

class RowApplied extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ColumnApplied(text: 'Applied', number: '28'),
        ColumnApplied(text: 'Reviewed', number: '73'),
        ColumnApplied(text: 'Contacted', number: '18'),
      ],
    );
  }
}

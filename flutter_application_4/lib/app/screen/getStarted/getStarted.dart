import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/Column_design.dart';
import 'package:flutter_application_4/app/designs/card_design.dart';
import 'package:flutter_application_4/app/designs/gradient_design.dart';
import 'package:flutter_application_4/app/screen/getStarted/widgets/first_row.dart';
import 'package:flutter_application_4/app/screen/getStarted/widgets/recent_task/recent_task.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradiantDesign(
      child: ColumnDesign(axisSize: MainAxisSize.max, children: [
        FirstRow(),
        CardDesign(
          children: [RecentTask()],
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/Column_design.dart';
import 'package:flutter_application_4/app/designs/row_design.dart';
import 'package:flutter_application_4/app/designs/text_design.dart';
import 'package:flutter_application_4/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/recent_task_widget.dart';

class RecentTask extends StatefulWidget {
  @override
  State<RecentTask> createState() => _RecentTaskState();
}

class _RecentTaskState extends State<RecentTask> {
  @override
  Widget build(BuildContext context) {
    return ColumnDesign(children: [
      RowDesign(children: [
        TextDesign(data: 'Recent Tasks', size: 18),
        TextButton(
            onPressed: () {},
            child: TextDesign(
              data: 'All Tasks',
              color: Color(0xffFE3997),
            ))
      ]),
      RecentTaskWidget()
    ]);
  }
}

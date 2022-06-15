import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/image_icon_design.dart';
import 'package:flutter_application_4/app/designs/image_icon_stack.dart';
import 'package:flutter_application_4/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/my_list_tile.dart';

class FirstListTile extends StatelessWidget {
  const FirstListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyListTile(
        title: 'Create Moodboard',
        subtitle: 'Today',
        icons: ImageIconStack(
          images: [
            ImageIconDesign(assetName: "assets/woman.jpeg"),
          ],
        ),
        initialState: true);
  }
}

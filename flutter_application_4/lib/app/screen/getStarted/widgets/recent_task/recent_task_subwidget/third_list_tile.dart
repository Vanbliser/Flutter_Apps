import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/image_icon_design.dart';
import 'package:flutter_application_4/app/designs/image_icon_stack.dart';
import 'package:flutter_application_4/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/my_list_tile.dart';

class ThirdListTile extends StatelessWidget {
  const ThirdListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyListTile(
        title: 'Create Style Guide',
        subtitle: 'Tomorrow',
        icons: ImageIconStack(
          images: [
            ImageIconDesign(assetName: "assets/man1.jpg"),
            ImageIconDesign(assetName: "assets/woman.jpeg"),
          ],
        ),
        initialState: false);
  }
}

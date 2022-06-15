import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/builderPage/models/list_item_model.dart';

class ListItemCard extends StatelessWidget {
  final ListItemModel listItem;
  const ListItemCard({required this.listItem, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listItem.title),
      subtitle: Text(listItem.subtitle),
      leading: listItem.icon,
      onTap: listItem.onTap,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/builderPage/models/list_item_model.dart';

mixin ListItemMixin{
  List<ListItemModel> listItems = [
    ListItemModel(
      title: 'Wisdom',
      subtitle: 'Ayogu',
      icon: Icon(Icons.person),
      onTap: () {},
    ),
    ListItemModel(
      title: 'Blossom',
      subtitle: 'Ayogu',
      icon: Icon(Icons.person),
      onTap: () {},
    ),
    ListItemModel(
      title: 'Favour',
      subtitle: 'Ayogu',
      icon: Icon(Icons.person),
      onTap: () {},
    ),
    ListItemModel(
      title: 'Precious',
      subtitle: 'Ayogu',
      icon: Icon(Icons.person),
      onTap: () {},
    ),
  ];
}
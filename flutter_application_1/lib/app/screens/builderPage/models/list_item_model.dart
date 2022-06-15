import 'package:flutter/material.dart';

class ListItemModel {
  String title, subtitle;
  Widget icon;
  void Function()? onTap;
  ListItemModel(
      {required this.title,
      required this.subtitle,
      required this.icon,
      this.onTap});
}

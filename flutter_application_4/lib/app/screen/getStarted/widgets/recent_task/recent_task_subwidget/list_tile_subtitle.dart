import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/designs/dot_design.dart';
import 'package:flutter_application_4/app/designs/text_design.dart';

class ListTileSubtitle extends StatefulWidget {
  String subtitle;
  Widget iconStacks;

  ListTileSubtitle({required this.subtitle, required this.iconStacks});

  @override
  State<ListTileSubtitle> createState() => _ListTileSubtitleState();
}

class _ListTileSubtitleState extends State<ListTileSubtitle> {
  late List<Widget> children;

  @override
  void initState() {
    children = [
      TextDesign(data: widget.subtitle, size: 12, weight: 4),
      SizedBox(width: 6),
      DotDesign(),
      SizedBox(width: 6),
      widget.iconStacks
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    );
  }
}

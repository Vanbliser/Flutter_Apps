import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextDesign extends StatelessWidget {
  final String data;
  final Color? color;
  final FontWeight fontWeight;
  const TextDesign(this.data,
      {Key? key,
      this.fontWeight = FontWeight.normal,
      this.color = const Color(0xff333333)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
          fontSize: 14.r,
          color: color,
          fontWeight: fontWeight,
        ));
  }
}

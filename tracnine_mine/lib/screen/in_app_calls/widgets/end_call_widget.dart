import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndCallWidget extends StatelessWidget {
  const EndCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.13.r,
      height: 0.13.r,
      decoration:
          const BoxDecoration(color: Color(0xffC5292A), shape: BoxShape.circle),
      child: Center(
          child: Icon(
        Icons.call_end_rounded,
        size: 0.08.r,
        color: Colors.white,
      )),
    );
  }
}

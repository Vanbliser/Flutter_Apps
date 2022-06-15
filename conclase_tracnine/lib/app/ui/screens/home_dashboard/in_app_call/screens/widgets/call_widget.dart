import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.r,
      height: 100.r,
      decoration:
          const BoxDecoration(color: Color(0xff2787BD), shape: BoxShape.circle),
      child: Center(
          child: Container(
        width: 25.r,
        height: 25.r,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
              color: Color(0xff2787BD), shape: BoxShape.circle),
        )),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.2.r,
      height: 0.2.r,
      decoration: const BoxDecoration(
        color: Color(0xff2787BD),
        shape: BoxShape.circle
      ),
      child: Center(child: Container(
        width: 0.15.r,
        height: 0.15.r,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(child: Container(
          width: 0.1.r,
          height: 0.1.r,
          decoration: const BoxDecoration(
            color: Color(0xff2787BD),
            shape: BoxShape.circle
          ),
        )),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndCallWidget extends StatelessWidget {
  const EndCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 55.r,
        height: 55.r,
        decoration: const BoxDecoration(
            color: Color(0xffC5292A), shape: BoxShape.circle),
        child: const Center(
            child: Icon(
          Icons.call_end_rounded,
          size: 25,
          color: Colors.white,
        )),
      ),
    );
  }
}

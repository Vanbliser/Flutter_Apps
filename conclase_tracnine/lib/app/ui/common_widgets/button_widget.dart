import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onpressed;
  final VoidCallback backIcon;

  const ButtonWidget({
    required this.title,
    required this.onpressed,
    required this.backIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(58.w, 52.h),
            primary: const Color(0xffE4EEEE),
          ),
          onPressed: backIcon,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 20.w),
        ElevatedButton(
          onPressed: onpressed,
          child: Text(
            title,
            style: TextStyle(fontSize: 16.sp),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(202.w, 52.h),
            primary: const Color(0xff62C6B7),
          ),
        ),
      ],
    );
  }
}

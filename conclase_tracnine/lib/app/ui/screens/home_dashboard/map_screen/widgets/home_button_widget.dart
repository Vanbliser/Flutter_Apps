import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnTripButtonWidget extends StatelessWidget {
  const OnTripButtonWidget({required this.title,required this.onpressed,Key? key}) : super(key: key);
  final String title;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 16.sp),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(202.w, 52.h),
        primary: const Color(0xff62C6B7),
      ),
    );
  }
}

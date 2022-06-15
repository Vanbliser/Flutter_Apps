import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'row_widget.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ButtonRowWidget(),
          const SizedBox(width: 10),
          Text(
            'Swipe to go online',
            style: TextStyle(fontSize: 16.sp),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(280.w, 70.h),
        primary: const Color(0xff62C6B7),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountPasswordTopBarWidget extends StatelessWidget {
  const AccountPasswordTopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225.h,
      child: Center(
        child: Text(
          'Change Password',
          style: TextStyle(
              fontSize: 24.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpInputWidget extends StatelessWidget {
  const OtpInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 39.r),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            hintText: "OTP",
            hintStyle: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey,
            )),
      ),
    );
  }
}

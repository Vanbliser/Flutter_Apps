import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserDescriptionWidget extends StatelessWidget {
  final String title1, title2;
  const UserDescriptionWidget(
      {required this.title1, required this.title2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0.r, 3.r, 5.r, 5.r),
          child: Text(
            title1,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xff8D9091),
            ),
          ),
        ),
        //  const SizedBox(width: 30),
        Padding(
          padding: EdgeInsets.fromLTRB(10.r, 3.r, 5.r, 5.r),
          child: Text(title2),
        ),
      ],
    );
  }
}

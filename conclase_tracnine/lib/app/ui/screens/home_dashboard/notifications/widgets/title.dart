import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstTitle extends StatelessWidget {
  const FirstTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today',
          style: TextStyle(
              fontSize: 18.r,
              fontWeight: FontWeight.w700,
              color: const Color(0xff8D9091)),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Mark as read',
              style: TextStyle(fontSize: 12.r, color: KangarooAppColors.green),
            ))
      ],
    );
  }
}

class SecondTitle extends StatelessWidget {
  const SecondTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.r),
      child: Row(children: [
        Text(
          'Yesterday',
          style: TextStyle(
              fontSize: 18.r,
              fontWeight: FontWeight.w700,
              color: const Color(0xff8D9091)),
        ),
      ]),
    );
  }
}

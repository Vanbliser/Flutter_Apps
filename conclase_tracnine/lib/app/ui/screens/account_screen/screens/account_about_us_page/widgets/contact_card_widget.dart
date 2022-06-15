import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCardWidget extends StatelessWidget {
  final IconData cardIcon;
  final Color cardColor;
  final String title;
  const ContactCardWidget(
      {required this.cardIcon, required this.title,required this.cardColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        height: 70.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              cardIcon,
              color: cardColor,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                color: cardColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

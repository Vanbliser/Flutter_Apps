import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfoWidget extends StatelessWidget {
  final String title;
  final VoidCallback infoOnTap;
  const AccountInfoWidget(
      {required this.title, required this.infoOnTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: infoOnTap,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}

import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/tap_to_open.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileWidget2 extends StatelessWidget {
  final String title, subtitle;
  final Widget leading;
  const ListTileWidget2(
      {Key? key,
      required this.leading,
      required this.subtitle,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.notificationDetailScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffF0F0F0),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.r, horizontal: 8.r),
        margin: EdgeInsets.symmetric(vertical: 5.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leading,
                SizedBox(width: 20.r),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 18.r, fontWeight: FontWeight.w500)),
                    Text(subtitle,
                        style: TextStyle(
                            fontSize: 16.r, color: const Color(0xff8D9091))),
                  ],
                )
              ],
            ),
            TapToOpen(ontap: () {
              Navigator.pushNamed(context, AppRoutes.notificationDetailScreen);
            })
          ],
        ),
      ),
    );
  }
}

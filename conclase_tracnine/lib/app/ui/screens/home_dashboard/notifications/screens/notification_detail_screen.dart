import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/data/detail_content.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/icon_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationDetailScreen extends StatelessWidget {
  const NotificationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100.r,
        leadingWidth: 90.r,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(top: 10.r),
          child: IconButton(
            iconSize: 35.r,
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(Icons.close),
            color: const Color(0xff2F626E),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
            horizontal: 30.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconImage(
                    images: 'assets/images/kangarooicon.png',
                    width: 50.w,
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₦300 has been added to your\n'
                        'account',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Kangaroo',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff8D9091),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.w,
                  vertical: 40.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: AspectRatio(
                  aspectRatio: 3 / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: detailContent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

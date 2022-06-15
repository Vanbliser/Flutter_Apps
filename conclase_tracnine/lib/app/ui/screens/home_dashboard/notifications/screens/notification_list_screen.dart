import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/list_screen_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2F626E),
      appBar: AppBar(
        toolbarHeight: 100.r,
        centerTitle: true,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 8.r),
          child: IconButton(
            iconSize: 35.r,
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(Icons.close),
            color: const Color(0xff62C6B7),
          ),
        ),
        title: Text(
          'Notification',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.sp),
        ),
        backgroundColor: const Color(0x00ffffff),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.r, horizontal: 10.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.r),
            topRight: Radius.circular(35.r),
          ),
        ),
        child: SingleChildScrollView(child: Column(children: listScreenItems)),
      ),
    );
  }
}

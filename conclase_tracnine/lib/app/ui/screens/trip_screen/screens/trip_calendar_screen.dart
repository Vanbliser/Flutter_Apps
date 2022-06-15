import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class TripCalendarScreen extends StatelessWidget {
  TripCalendarScreen({Key? key}) : super(key: key);

  final initialDate = DateTime.now();
  final firstDate = DateTime(2000, 1, 1);
  final lastDate = DateTime(2025, 12, 31);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KangarooAppColors.white,
      appBar: const AppBarWithXIcon(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 32.h, 16.w, 16.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 302.w,
                height: 360.h,
                child: CalendarDatePicker(
                  initialDate: initialDate,
                  firstDate: firstDate,
                  lastDate: lastDate,
                  onDateChanged: (newDate) {},
                ),
              ),
              SizedBox(height: 32.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(280.w, 52.h),
                  primary: KangarooAppColors.green,
                ),
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

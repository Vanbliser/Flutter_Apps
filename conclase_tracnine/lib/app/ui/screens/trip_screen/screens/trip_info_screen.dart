import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class TripInfoScreen extends StatelessWidget {
  const TripInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KangarooAppColors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 42.h),
          const TripInfoHeader(),
          SizedBox(height: 32.h),
          const TripInfoCards(),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Delivery History',
                style: KangarooAppStyle.tripScreenText3,
              ),
            ),
          ),
          const Expanded(child: DeliveryHistoryList()),
        ],
      ),
    );
  }
}

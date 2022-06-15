import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class TripInfoHeader extends StatelessWidget {
  const TripInfoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            'Today',
            style: KangarooAppStyle.tripScreenText3,
          ),
        ),
        SizedBox(width: 240.w),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.tripCalendarScreen,
            );
          },
          child: Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: CircleAvatar(
              backgroundColor: KangarooAppColors.green,
              child: SvgPicture.asset('assets/icons/icon_calendar.svg'),
            ),
          ),
        ),
      ],
    );
  }
}

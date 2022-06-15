import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class TripInfoCards extends StatelessWidget {
  const TripInfoCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              TripCard(
                cardWidth: 160.w,
                cardHeight: 75.h,
                cardPadding: EdgeInsets.all(16.r),
                cardColor: KangarooAppColors.brown,
                columnAlignment: MainAxisAlignment.spaceBetween,
                cardChildren: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Kilometres'),
                      SizedBox(
                        width: 12.w,
                        height: 15.h,
                        child: SvgPicture.asset(
                          'assets/icons/icon_trip.svg',
                          color: KangarooAppColors.black,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '1,389KM',
                    style: KangarooAppStyle.tripScreenText1,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              TripCard(
                cardWidth: 160.w,
                cardHeight: 75.h,
                cardPadding: EdgeInsets.all(16.r),
                cardColor: KangarooAppColors.lightGreen,
                columnAlignment: MainAxisAlignment.spaceBetween,
                cardChildren: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Uptime'),
                      SvgPicture.asset('assets/icons/icon_clock.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '17892',
                        style: KangarooAppStyle.tripScreenText1,
                      ),
                      const Text('mins'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          TripCard(
            cardWidth: 160.w,
            cardHeight: 160.h,
            cardPadding: EdgeInsets.all(8.r),
            cardColor: KangarooAppColors.lightPurple,
            columnAlignment: MainAxisAlignment.spaceEvenly,
            cardChildren: [
              SvgPicture.asset('assets/icons/icon_box.svg'),
              Text(
                'Completed Deliveries',
                style: KangarooAppStyle.tripScreenText2,
              ),
              Text(
                '14',
                style: KangarooAppStyle.tripScreenText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KangarooAppStyle {
  static const TextStyle navLabelSelected = TextStyle(
    color: KangarooAppColors.green,
  );

  static const TextStyle navLabelUnselected = TextStyle(
    color: KangarooAppColors.black,
  );

  static TextStyle tripScreenText1 = TextStyle(
    fontWeight: FontWeight.w500,
    color: KangarooAppColors.black,
    fontSize: 20.sp,
  );

  static TextStyle tripScreenText2 = const TextStyle(
    fontWeight: FontWeight.w300,
    color: KangarooAppColors.black,
  );

  static TextStyle tripScreenTextX = TextStyle(
    fontWeight: FontWeight.w500,
    color: KangarooAppColors.black,
    fontSize: 12.sp,
  );

  static TextStyle tripScreenText3 = TextStyle(
    fontWeight: FontWeight.w700,
    color: KangarooAppColors.grey,
    fontSize: 16.sp,
  );
  static TextStyle homeScreenText1 = TextStyle(
    fontWeight: FontWeight.w700,
    color: KangarooAppColors.white,
    fontSize: 24.sp,
  );
  static TextStyle welcomeScreenText1 = TextStyle(
    fontWeight: FontWeight.w700,
    color: KangarooAppColors.black,
    fontSize: 24.sp,
  );
  static TextStyle homeScreenText3 = TextStyle(
    fontWeight: FontWeight.w500,
    color: KangarooAppColors.white,
    fontSize: 16.sp,
  );

  static TextStyle deliveryCardText1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: KangarooAppColors.grey,
  );
  static TextStyle onTripText1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
    color: KangarooAppColors.grey,
  );
  static TextStyle homeScreenText2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14.sp,
    color: KangarooAppColors.black,
  );

  static TextStyle deliveryTrackTitleText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: KangarooAppColors.green,
  );

  static TextStyle deliveryTrackBodyText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: KangarooAppColors.black,
  );

  static TextStyle statusUpdateText1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
    color: KangarooAppColors.black,
  );

  static const IconThemeData navIconSelected = IconThemeData(
    color: KangarooAppColors.green,
  );

  static const IconThemeData navIconUnselected = IconThemeData(
    color: KangarooAppColors.green,
  );
}

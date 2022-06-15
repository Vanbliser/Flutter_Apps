import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/icon_image.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/list_tile.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> listScreenItems = [
  const FirstTitle(),
  ListTileWidget2(
    leading:
        IconImage(images: 'assets/images/kangarooicon_big.png', width: 30.r),
    title: 'Tracnine messaged y...',
    subtitle: '7:01 PM',
  ),
  const SecondTitle(),
  ListTileWidget2(
    leading:
        IconImage(images: 'assets/images/kangarooicon_big.png', width: 30.r),
    title: '₦300 has been add...',
    subtitle: '7:01 PM',
  ),
  ListTileWidget2(
    leading: IconImage(images: 'assets/images/icon_big.png', width: 30.r),
    title: 'Olatunji messaged y...',
    subtitle: '5:51 PM',
  ),
  ListTileWidget2(
    leading: IconImage(images: 'assets/images/Vector_big.png', width: 30.r),
    title: 'Order Request',
    subtitle: '12:18 PM',
  ),
  ListTileWidget2(
    leading: IconImage(images: 'assets/images/Vector_big.png', width: 30.r),
    title: 'Order Cancelled',
    subtitle: '12:18 PM',
  ),
];

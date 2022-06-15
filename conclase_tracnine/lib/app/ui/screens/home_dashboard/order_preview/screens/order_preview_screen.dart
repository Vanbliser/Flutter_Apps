import 'package:conclase_tracnine/app/data/models/order_timeline_item.dart';
import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/app_bar_with_x_icon.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/order_preview/components/order_time_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OrderPreviewScreen extends StatelessWidget {
  const OrderPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KangarooAppColors.white,
      appBar: const AppBarWithXIcon(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: SizedBox(
                height: 450.h,
                child: OrderTimeLine(
                  itemList: orderTimeLineItems,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 16.h),
              child: ButtonWidget(
                title: 'Confirm Pick-Up',
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.mapScreen);
                  //  appNavigator!.pushNamed(CardRoutes.dropOffCardWidget);
                },
                backIcon: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

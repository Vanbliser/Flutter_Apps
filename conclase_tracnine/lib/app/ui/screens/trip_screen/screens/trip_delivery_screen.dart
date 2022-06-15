import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class TripDeliveryScreen extends StatelessWidget {
  const TripDeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Delivery;
    return Scaffold(
      backgroundColor: KangarooAppColors.white,
      appBar: const AppBarWithXIcon(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.r),
            child: SizedBox(
              width: 280.w,
              height: 205.h,
              child: DeliveryDetails(
                deliveryID: args.deliveryID,
                category: args.category,
                type: args.type,
                quantity: args.quantity,
                deliveryType: args.deliveryType,
                discount: args.discount,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: DeliveryTimeLine(itemList: deliveryTimelineItems),
            ),
          ),
        ],
      ),
    );
  }
}

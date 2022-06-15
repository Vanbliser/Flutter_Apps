import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({required this.delivery, Key? key}) : super(key: key);

  final Delivery delivery;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.tripDeliveryScreen,
          arguments: delivery,
        );
      },
      child: SizedBox(
        width: 306.w,
        height: 233.h,
        child: Card(
          margin: EdgeInsets.all(23.r),
          color: KangarooAppColors.lightGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Text(delivery.deliveryIconText ?? 'X'),
                    ),
                    Text(delivery.name),
                  ],
                ),
              ),
              Expanded(
                child: DeliveryDetails(
                  deliveryID: delivery.deliveryID,
                  category: delivery.category,
                  type: delivery.type,
                  quantity: delivery.quantity,
                  deliveryType: delivery.deliveryType,
                  discount: delivery.discount,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({
    required this.deliveryID,
    required this.category,
    required this.type,
    required this.quantity,
    required this.deliveryType,
    required this.discount,
    Key? key,
  }) : super(key: key);

  final String deliveryID;
  final String category;
  final String type;
  final int quantity;
  final String deliveryType;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Delivery ID:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(deliveryID),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Category:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(category),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Type:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(type),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Quantity:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text('$quantity'),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Delivery Type:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(deliveryType)),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(
                'Discount:',
                style: KangarooAppStyle.deliveryCardText1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text(discount),
            ),
          ],
        ),
      ],
    );
  }
}

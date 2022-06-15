import 'package:conclase_tracnine/app/data/models/order_timeline_item.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_style.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/widgets/call_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTrackListItem extends StatelessWidget {
  const OrderTrackListItem({
    required this.orderTimelineItem,
    Key? key,
  }) : super(key: key);

  final OrderTimelineItem orderTimelineItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            '${orderTimelineItem.orderTitle} - ',
            style: KangarooAppStyle.deliveryTrackTitleText,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 4,
                child: Text(
                  orderTimelineItem.orderAddress,
                  softWrap: true,
                  style: KangarooAppStyle.deliveryTrackBodyText,
                ),
              ),
              IconButton(
                onPressed: () {
                  callAlertDialog(context);
                },
                icon: const Icon(Icons.phone_sharp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

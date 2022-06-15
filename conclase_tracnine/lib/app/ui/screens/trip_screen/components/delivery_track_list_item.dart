import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class DeliveryTrackListItem extends StatelessWidget {
  const DeliveryTrackListItem({
    required this.deliveryTimelineItem,
    Key? key,
  }) : super(key: key);

  final DeliveryTimelineItem deliveryTimelineItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            '${deliveryTimelineItem.trackTitle} - ',
            style: KangarooAppStyle.deliveryTrackTitleText,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                deliveryTimelineItem.trackLocation,
                style: KangarooAppStyle.deliveryTrackBodyText,
              ),
              Text(
                deliveryTimelineItem.trackTime,
                style: KangarooAppStyle.deliveryTrackBodyText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

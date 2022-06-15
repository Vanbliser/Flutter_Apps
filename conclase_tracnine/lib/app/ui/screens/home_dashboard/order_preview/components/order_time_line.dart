import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/order_preview/components/order_track_list_item.dart';
import 'package:flutter/material.dart';

class OrderTimeLine extends StatelessWidget {
  const OrderTimeLine({
    required this.itemList,
    Key? key,
  }) : super(key: key);

  final List itemList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Column(
              children: [
                Container(
                  width: 2,
                  height: 45,
                  color: index == 0
                      ? KangarooAppColors.white
                      : KangarooAppColors.darkGreen,
                ),
                const Icon(
                  Icons.circle_rounded,
                  color: KangarooAppColors.green,
                ),
                Container(
                  width: 2,
                  height: 45,
                  color: index == itemList.length - 1
                      ? KangarooAppColors.white
                      : KangarooAppColors.darkGreen,
                ),
              ],
            ),
            Expanded(
              child: OrderTrackListItem(
                orderTimelineItem: itemList[index],
              ),
            ),
          ],
        );
      },
    );
  }
}

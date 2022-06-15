import 'package:flutter/material.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class DeliveryTimeLine extends StatelessWidget {
  const DeliveryTimeLine({
    required this.itemList,
    Key? key,
  }) : super(key: key);

  final List itemList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
              child: DeliveryTrackListItem(
                deliveryTimelineItem: itemList[index],
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:conclase_tracnine/tracnine_library.dart';

class DeliveryHistoryList extends StatelessWidget {
  const DeliveryHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: deliveryList.length,
      itemBuilder: (context, index) {
        return DeliveryCard(delivery: deliveryList[index]);
      },
    );
  }
}

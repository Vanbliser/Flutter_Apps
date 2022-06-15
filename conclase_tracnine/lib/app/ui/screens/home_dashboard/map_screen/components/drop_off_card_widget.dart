import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app_themes/kangaroo_app_style.dart';
import '../widgets/call_alert_dialog.dart';
import '../widgets/home_button_widget.dart';
import '../widgets/on_trip_dialog.dart';

class DropOffCardWidget extends StatelessWidget {
  const DropOffCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: Container(
        // height: 180.h,
        // width: 320.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            ListTile(
              leading: const Icon(Icons.place_outlined),
              title: Padding(
                padding: EdgeInsets.only(bottom: 5.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Aug 31, 2021 ',
                      style: KangarooAppStyle.onTripText1,
                    ),
                    Text(
                      ' 9:02am',
                      style: KangarooAppStyle.onTripText1,
                    )
                  ],
                ),
              ),
              subtitle: Text.rich(TextSpan(
                  text: 'Enroute - ',
                  style: KangarooAppStyle.deliveryTrackTitleText,
                  children: [
                    TextSpan(
                      text: 'Mobolaji Bank Anthony',
                      style: KangarooAppStyle.deliveryTrackBodyText,
                    )
                  ])),
              trailing: IconButton(
                  onPressed: () {
                    callAlertDialog(context);
                  },
                  icon: const Icon(
                    Icons.phone,
                    color: Color(0xff2F626E),
                  )),
            ),
            SizedBox(height: 40.h),
            OnTripButtonWidget(
              title: 'Confirm Drop-off',
              onpressed: () {
                onTripAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

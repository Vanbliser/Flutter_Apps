
import 'package:conclase_tracnine/app/routes/card_routes/card_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/widgets/home_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app_themes/kangaroo_app_style.dart';
import '../widgets/call_alert_dialog.dart';

class PickUpCardWidget extends StatelessWidget {
  const PickUpCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.r),
      child: Container(
        // height: 180.h,
        // width: 320.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            ListTile(
              leading: const Icon(Icons.place_outlined),
              title: Text(
                '10 Wole Ogunjimi Street, Ikeja',
                style: KangarooAppStyle.deliveryTrackBodyText,
              ),
              trailing: IconButton(
                onPressed: () {
                  callAlertDialog(context);
                },
                icon: const Icon(
                  Icons.phone,
                  color: Color(0xff2F626E),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            OnTripButtonWidget(
              title: 'Confirm Pick-Up',
              onpressed: () {
                Navigator.pushNamed(context, CardRoutes.dropOffCardWidget);
              },
            ),
          ],
        ),
      ),
    );
  }
}

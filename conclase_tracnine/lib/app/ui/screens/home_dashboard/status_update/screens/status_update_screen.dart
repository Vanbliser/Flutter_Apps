import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_style.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/status_update/components/status_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusUpdateScreen extends StatelessWidget {
  const StatusUpdateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 32.w, top: 32.h),
                child: Text(
                  'Reason for Cancellation',
                  style: KangarooAppStyle.statusUpdateText1,
                ),
              ),
            ),
            const StatusRadioButton(),
            Padding(
              padding: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
              child: TextFormField(
                maxLines: 5,
                minLines: 1,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h),
              child: ButtonWidget(
                title: 'Done',
                onpressed: () {
                  Navigator.pushNamed(context, AppRoutes.homeMainScreen);
                },
                backIcon: () {
                  Navigator.pushNamed(context, AppRoutes.mapScreen);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

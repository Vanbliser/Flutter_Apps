
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../tracnine_library.dart';


callAlertDialog(BuildContext context) {
  Dialog errorDialog = Dialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)), //this right here
    child: SizedBox(
      height: 210.h,
      width: 240.w,
      child: Padding(
        padding: EdgeInsets.only(left: 20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                appNavigator!.pushNamed(AppRoutes.inAppCallScreen);
                //Navigator.of(context, rootNavigator: true).pop();
              },
              child: const ListTile(
                leading: Icon(Icons.phonelink_ring),
                title: Text(
                  'In-app Call',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text(
                  'by Phone',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Charges may apply',
                  style: KangarooAppStyle.onTripText1,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return errorDialog;
    },
  );
}

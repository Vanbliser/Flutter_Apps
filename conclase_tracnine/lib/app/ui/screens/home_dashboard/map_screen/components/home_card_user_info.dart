
import 'package:conclase_tracnine/tracnine_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../routes/card_routes/card_routes.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.r),
      child: Container(
        height: 235.h,
        width: 320.w,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 175, 174, 174),
              blurRadius: 7,
              offset: Offset(0, -4), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xff2787BD),
                child: Text(
                  'O',
                  style: KangarooAppStyle.homeScreenText1,
                ),
              ),
              title: Text(
                'Olutade Olanrewaju',
                style: KangarooAppStyle.tripScreenText1,
              ),
              subtitle: const Text('3.1 kms away | 14 mins'),
            ),
            ListTile(
              title: Text(
                'Pickup from',
                style: KangarooAppStyle.homeScreenText2,
              ),
              subtitle: Text(
                '29 Wole Ogunjimi Street, Ikeja',
                style: KangarooAppStyle.tripScreenTextX,
              ),
              trailing: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, AppRoutes.orderPreviewScreen);
                  appNavigator!.pushNamed(AppRoutes.orderPreviewScreen);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Tap to open ',
                      style: TextStyle(color: Color(0xff62C6B7)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 10,
                      color: Color(0xff62C6B7),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: const Text(
                    "Reject",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    appNavigator!.pushNamed(AppRoutes.statusUpdateScreen);
                  },
                ),
                SizedBox(
                  width: 131.w,
                  height: 52.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color(0xff62C6B7),
                    ),
                    child: Text(
                      "Accept",
                      style: KangarooAppStyle.homeScreenText3,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, CardRoutes.pickUpCardWidget);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

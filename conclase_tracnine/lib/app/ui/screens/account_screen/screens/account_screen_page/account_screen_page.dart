import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_screen_page/widgets/account_info_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_screen_page/widgets/stacked_card.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/log_out_page/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountHomeScreen extends StatelessWidget {
  const AccountHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xff62C6B7),
            child: Stack(children: [
              SvgPicture.asset(
                'assets/images/pattern1.svg',
                height: 220.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.r),
                child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: StackedCardWidget()),
              ),
            ]),
          ),
          AccountInfoWidget(
            title: 'Change Password',
            infoOnTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.accountPasswordPage,
              );
            },
          ),
          AccountInfoWidget(
            title: 'Documents',
            infoOnTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.documentsPage,
              );
            },
          ),
          AccountInfoWidget(
            title: 'About Us',
            infoOnTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.aboutUsPage,
              );
            },
          ),
          AccountInfoWidget(
            title: 'Contact Support',
            infoOnTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.contactUsPage,
              );
            },
          ),
          InkWell(
            onTap: () {
              showAlertDialog(context);
            },
            child: ListTile(
              title: Text(
                'Log Out',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_about_us_page/widgets/about_us_text_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_about_us_page/widgets/contact_card_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.h),
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 34.h),
            const ContactCardRowWidget(),
            SizedBox(height: 30.h),
            const AboutUsTextWidget(),
            SizedBox(height: 50.h),
            ButtonWidget(
              title: 'View Terms Agreement',
              onpressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.termsAgreementPage,
                );
              },
              backIcon: () => Navigator.pop(context),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

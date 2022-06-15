import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/text_form_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_about_us_page/widgets/contact_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.r),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80.h),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ContactCardWidget(
                      title: 'Call Us',
                      cardIcon: Icons.call,
                      cardColor: Color(0xffD18832),
                    ),
                    SizedBox(width: 20.w),
                    const ContactCardWidget(
                      title: 'Email Us',
                      cardColor: Color(0xff62C6B7),
                      cardIcon: Icons.mail_outline_outlined,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  'Quick Contact',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10.h),
                const TextInputWidget(title: 'Name'),
                SizedBox(height: 10.h),
                const TextInputWidget(title: 'Email'),
                SizedBox(height: 10.h),
                const TextInputWidget(title: 'Message'),
                SizedBox(height: 10.h),
                ButtonWidget(
                  title: 'Submit',
                  onpressed: () {},
                  backIcon: () => Navigator.pop(context),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

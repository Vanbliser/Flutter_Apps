import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_password_screen/widgets/input_otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common_widgets/button_widget.dart';

class AccountPasswordContentWidget extends StatelessWidget {
  const AccountPasswordContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              const Text(
                'Please enter OTP sent to +234*******789',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 50.h),
              const OtpInputWidget(),
              SizedBox(height: 90.h),
              ButtonWidget(
                title: 'Verify',
                onpressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.newPasswordPage,
                  );
                },
                backIcon: () => Navigator.pop(context),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

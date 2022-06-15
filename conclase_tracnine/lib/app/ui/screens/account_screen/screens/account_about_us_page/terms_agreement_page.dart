import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_about_us_page/widgets/about_us_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAgreementScreen extends StatelessWidget {
  const TermsAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              IconButton(
                onPressed: (() => Navigator.pop(context)),
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Terms Agreement',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              const AboutUsTextWidget(),
              SizedBox(height: 10.h),
              const AboutUsTextWidget(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

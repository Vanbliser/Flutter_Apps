import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_style.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/welcome_screen/widgets/home_button.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/welcome_screen/widgets/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            if (details.delta.direction > 0) {
              Navigator.pushNamed(
                context,
                AppRoutes.mapScreen,
              );
            }
          },
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeIconWidget(),
                SizedBox(height: 30.h),
                Column(
                  children: [
                    Center(
                        child: SvgPicture.asset('assets/images/Ellipse_8.svg')),
                    SizedBox(height: 10.h),
                    Text('Good Morning',
                        style: KangarooAppStyle.tripScreenTextX),
                    SizedBox(height: 3.h),
                    Text('Richard', style: KangarooAppStyle.welcomeScreenText1),
                    SizedBox(height: 90.h),
                    Text('Someone needs your help, can you deliver.',
                        style: KangarooAppStyle.tripScreenTextX),
                    SizedBox(height: 50.h),
                    const HomeButtonWidget(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_screen_page/widgets/user_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackedCardWidget extends StatelessWidget {
  const StackedCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 343.w,
        height: 154.h,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.r),
              child: SvgPicture.asset('assets/images/Ellipse1.svg'),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                UserDescriptionWidget(
                  title1: 'Name: ',
                  title2: 'Olutade Olarenwaju',
                ),
                UserDescriptionWidget(
                  title1: 'Phone: ',
                  title2: '08023456789',
                ),
                UserDescriptionWidget(
                  title1: 'Fleet Owner: ',
                  title2: 'GIG Logistics',
                ),
                UserDescriptionWidget(
                  title1: 'Region: ',
                  title2: 'South-East',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

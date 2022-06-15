import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TapToOpen extends StatelessWidget {
  final void Function() ontap;
  const TapToOpen({Key? key,required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tap to open',
              style: TextStyle(color: KangarooAppColors.green, fontSize: 12.r)),
          SizedBox(width: 2.r),
          const Icon(Icons.chevron_right_rounded,
              color: KangarooAppColors.green)
        ],
      ),
    );
  }
}

import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWithXIcon extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWithXIcon({Key? key}) : super(key: key);

  @override
  State<AppBarWithXIcon> createState() => _AppBarWithXIconState();

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

class _AppBarWithXIconState extends State<AppBarWithXIcon> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: KangarooAppColors.white,
      elevation: 0,
      leading: IconButton(
        iconSize: 32.r,
        icon: const Icon(Icons.close, color: KangarooAppColors.black),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

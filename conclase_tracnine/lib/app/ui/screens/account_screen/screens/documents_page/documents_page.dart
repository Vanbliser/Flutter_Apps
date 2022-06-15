import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/documents_page/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../routes/app_routes.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Center(
                child: Text(
                  'Documents',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 70.h),
              const ListTileWidget(
                title: "Driver's Licence",
                title2: "1 MB",
              ),
              SizedBox(height: 10.h),
              const ListTileWidget(
                title: "Road Safety Rules",
                title2: "4 MB",
              ),
              SizedBox(height: 10.h),
              const ListTileWidget(
                title: "Vehicle Information",
                title2: "350 KB",
              ),
              SizedBox(height: 10.h),
              const ListTileWidget(
                title: "Package Information",
                title2: "10 MB",
              ),
              SizedBox(height: 30.h),
              ButtonWidget(
                title: 'Request Document',
                onpressed: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.requestdocumentPage,
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

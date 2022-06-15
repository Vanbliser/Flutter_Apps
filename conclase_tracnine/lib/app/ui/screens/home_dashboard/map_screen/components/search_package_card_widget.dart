import 'package:conclase_tracnine/app/routes/card_routes/card_routes.dart';
import 'package:flutter/material.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPackageCardWidget extends StatefulWidget {
  const SearchPackageCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPackageCardWidget> createState() =>
      _SearchPackageCardWidgetState();
}

class _SearchPackageCardWidgetState extends State<SearchPackageCardWidget> {
  @override
  void initState() {
    super.initState();
    //wait for 3 seconds before navigating to the next page
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushNamed(context, CardRoutes.userInfoCardWidget);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.elasticInOut,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.r),
        child: Container(
          height: 235.h,
          width: 320.w,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 175, 174, 174),
              blurRadius: 7,
              offset: Offset(0, -4), // changes position of shadow
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 15),
              Text(
                'Searching packages aroung you',
                style: KangarooAppStyle.deliveryCardText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:conclase_tracnine/app/routes/app_routes_map.dart';
import 'package:conclase_tracnine/app/ui/app_themes/kangaroo_app_color.dart';
import 'package:conclase_tracnine/app/ui/screens/home_main/home_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: KangarooAppColors.green,
      statusBarColor: KangarooAppColors.green,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: appNavKey,
        routes: appRoutesMap,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeMain(),
      ),
    );
  }
}

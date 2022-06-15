import 'package:flutter/material.dart';
import 'package:mine/route/route.dart';
import 'package:mine/route/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (setting) =>
          MaterialPageRoute(builder: route[setting.name]!),
      navigatorKey: homeDashboardNavKey,
      routes: route,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context,RouteName.notificationPage);
              },
              child: const Text('Notification',style: TextStyle(fontSize: 12)),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context,RouteName.inAppCallPage);
              },
              child: const Text('In App Calls',style: TextStyle(fontSize: 12)),
            )
          ],
        ),
      ),
    ),
    );
  }
}

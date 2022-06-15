import 'package:flutter/material.dart';
import 'package:mine/route/route_names.dart';
import 'package:mine/screen/home_page.dart';
import 'package:mine/screen/in_app_calls/in_app_calls.dart';
import 'package:mine/screen/notification/notification.dart';

final homeDashboardNavKey = GlobalKey<NavigatorState>();
final homeDashboardNavigator = homeDashboardNavKey.currentState;


Map<String, Value> route = {
  RouteName.homePage: (_) => const HomePage(),
  RouteName.notificationPage: (_) => const NotificationPage(),
  RouteName.inAppCallPage: (_) => const InAppCallsPage(),
};

typedef Value = Widget Function(BuildContext);

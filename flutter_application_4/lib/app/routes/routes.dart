import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4/app/routes/route_names.dart';
import 'package:flutter_application_4/app/screen/getStarted/getStarted.dart';
import 'package:flutter_application_4/app/screen/home/home.dart';

Map<String, Value> route = {
  RouteName.homePage: (_) => HomePage(),
  RouteName.getStartedPage: (_) => GetStartedPage()
};

typedef Value = Widget Function(BuildContext);

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/app/route/route-names.dart';
import 'package:flutter_application_1/app/screens/animations/fade_transition_page.dart';
import 'package:flutter_application_1/app/screens/animations/opacity_animations.dart';
import 'package:flutter_application_1/app/screens/animations/animations_page.dart';
import 'package:flutter_application_1/app/screens/animations/scale_transition_page.dart';
import 'package:flutter_application_1/app/screens/api/api_authenticate.dart';
import 'package:flutter_application_1/app/screens/api/api_delete_page.dart';
import 'package:flutter_application_1/app/screens/api/api_fetch_page.dart';
import 'package:flutter_application_1/app/screens/api/api_parse.dart';
import 'package:flutter_application_1/app/screens/api/api_request_page.dart';
import 'package:flutter_application_1/app/screens/api/api_send.dart';
import 'package:flutter_application_1/app/screens/api/api_update.dart';
import 'package:flutter_application_1/app/screens/api/api_websocket.dart';
import 'package:flutter_application_1/app/screens/api/widgets/api_page.dart';
import 'package:flutter_application_1/app/screens/builderPage/builder_page.dart';
import 'package:flutter_application_1/app/screens/homepage/homepage.dart';
import 'package:flutter_application_1/app/screens/api_page/api_page.dart'
    as ApiHome;
import 'package:flutter_application_1/app/screens/riverpod_page/riverpod_page.dart';
import '../screens/basicpage/basic_page.dart';

Map<String, WidgetBuilder> routes = {
  RouteNames.homepage: (_) => HomePage(),
  RouteNames.basicpage: (_) => BasicPage(),
  RouteNames.animationHome: (_) => AnimationsPage(),
  RouteNames.animations: (_) => AnimatedOpacityPage(),
  RouteNames.fadeTransition: (_) => FadeTransitionPage(),
  RouteNames.scaleTransition: (_) => ScaleTransitionPage(),
  RouteNames.builderPage: (_) => BuilderPage(),
  RouteNames.apiPage: (_) => ApiHome.ApiPage(),
  RouteNames.riverpodPage: (_) => RiverpodPage(),
  // RouteNames.apiAuthenticatePage: (_) => ApiAuthenticatePage(),
  // RouteNames.apiDeletePage: (_) => ApiDeletePage(),
  // RouteNames.apiFetchPage: (_) => ApiFetchPage(),
  // RouteNames.apiParsePage: (_) => ApiParsePage(),
  // RouteNames.apiRequestPage: (_) => ApiRequestPage(),
  // RouteNames.apiSendPage: (_) => ApiSendPage(),
  // RouteNames.apiUpdatePage: (_) => ApiUpdatePage(),
  // RouteNames.apiWebsocketPage: (_) => ApiWebsocketPage()
};

typedef WidgetBuilder = Widget Function(BuildContext);

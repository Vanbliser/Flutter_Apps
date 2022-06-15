import 'package:conclase_tracnine/app/routes/card_routes/card_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/components/home_card_user_info.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/components/search_package_card_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/components/drop_off_card_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/components/pick_up_card_widget.dart';
import 'package:flutter/material.dart';

final cardNavKey = GlobalKey<NavigatorState>();
final cardNavigator = cardNavKey.currentState;

Map<String, Widget Function(BuildContext)> cardRoutesMap = {
  CardRoutes.searchCardScreen: (context) => const SearchPackageCardWidget(),
  CardRoutes.userInfoCardWidget: (context) => const UserInfoCardWidget(),
  CardRoutes.pickUpCardWidget: (context) => const PickUpCardWidget(),
  CardRoutes.dropOffCardWidget: (context) => const DropOffCardWidget(),
};

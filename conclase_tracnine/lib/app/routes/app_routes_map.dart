import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/order_preview/screens/order_preview_screen.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/status_update/screens/status_update_screen.dart';
import 'package:conclase_tracnine/app/ui/screens/home_main/home_main.dart';
import 'package:conclase_tracnine/app/ui/screens/trip_screen/screens/trip_calendar_screen.dart';
import 'package:conclase_tracnine/app/ui/screens/trip_screen/screens/trip_delivery_screen.dart';
import 'package:conclase_tracnine/app/ui/screens/trip_screen/screens/trip_home_screen.dart';
import 'package:conclase_tracnine/app/ui/screens/trip_screen/screens/trip_info_screen.dart';
import 'package:flutter/material.dart';

import '../ui/screens/account_screen/account_home_screen.dart';
import '../ui/screens/account_screen/screens/account_about_us_page/about_us_page.dart';
import '../ui/screens/account_screen/screens/account_about_us_page/terms_agreement_page.dart';
import '../ui/screens/account_screen/screens/account_contact_support_page/contact_us_screen.dart';
import '../ui/screens/account_screen/screens/account_password_screen/account_password_screen.dart';
import '../ui/screens/account_screen/screens/account_password_screen/new_password_screen.dart';
import '../ui/screens/account_screen/screens/account_screen_page/account_screen_page.dart';
import '../ui/screens/account_screen/screens/documents_page/documents_page.dart';
import '../ui/screens/account_screen/screens/documents_page/request_doucument.dart';
import '../ui/screens/home_dashboard/in_app_call/screens/in_app_call_screen.dart';
import '../ui/screens/home_dashboard/map_screen/map_screen.dart';
import '../ui/screens/home_dashboard/notifications/screens/notification_detail_screen.dart';
import '../ui/screens/home_dashboard/notifications/screens/notification_list_screen.dart';
import '../ui/screens/home_dashboard/welcome_screen/welcome_screen.dart';

final appNavKey = GlobalKey<NavigatorState>();
final appNavigator = appNavKey.currentState;

Map<String, Widget Function(BuildContext)> appRoutesMap = {
  /// For the HomeMain screen
  AppRoutes.homeMainScreen: (context) => const HomeMain(),

  /// For the TripScreen section
  AppRoutes.tripHomeScreen: (context) => const TripHomeScreen(),
  AppRoutes.tripInfoScreen: (context) => const TripInfoScreen(),
  AppRoutes.tripDeliveryScreen: (context) => const TripDeliveryScreen(),
  AppRoutes.tripCalendarScreen: (context) => TripCalendarScreen(),

  /// For the Home Dashboard section
  AppRoutes.inAppCallScreen: (context) => const InAppCallScreen(),
  AppRoutes.mapScreen: (context) => const MapScreen(),
 
  AppRoutes.notificationDetailScreen: (context) =>
      const NotificationDetailScreen(),
  AppRoutes.notificationListScreen: (context) => const NotificationListScreen(),
  AppRoutes.orderPreviewScreen: (context) => const OrderPreviewScreen(),
  AppRoutes.statusUpdateScreen: (context) => const StatusUpdateScreen(),
  AppRoutes.welcomeScreen: (context) => const WelcomeScreen(),
 

  /// For the AccountScreen section
  AppRoutes.accountScreen: (context) => const AccountScreen(),
  AppRoutes.accountHomePage: (context) => const AccountHomeScreen(),
  AppRoutes.accountPasswordPage: (context) => const AcoountPasswordScreen(),
  AppRoutes.newPasswordPage: (context) => const NewPasswordScreen(),
  AppRoutes.aboutUsPage: (context) => const AboutUsScreen(),
  AppRoutes.termsAgreementPage: (context) => const TermsAgreementScreen(),
  AppRoutes.contactUsPage: (context) => const ContactUsScreen(),
  AppRoutes.documentsPage: (context) => const DocumentsScreen(),
  AppRoutes.requestdocumentPage: (context) => const RequestDocumentScreen(),
};

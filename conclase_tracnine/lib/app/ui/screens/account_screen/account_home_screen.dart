import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_screen_page/account_screen_page.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: AccountHomeScreen(),
    );
  }
}

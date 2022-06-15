import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_password_screen/widgets/acct_password_contet_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/account_screen/screens/account_password_screen/widgets/acct_password_topbar.dart';
import 'package:flutter/material.dart';

class AcoountPasswordScreen extends StatelessWidget {
  const AcoountPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff62C6B7),
      body: Column(
        children: const [
          AccountPasswordTopBarWidget(),
          AccountPasswordContentWidget(),
        ],
      ),
    );
  }
}

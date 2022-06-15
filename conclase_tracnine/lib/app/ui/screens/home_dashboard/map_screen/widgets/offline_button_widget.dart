import 'package:flutter/material.dart';

import '../../../../../../tracnine_library.dart';

class OfflineButtonWidget extends StatelessWidget {
  const OfflineButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.homeMainScreen, (route) => false);
        // appNavigator!.pushAndRemoveUntil(context,AppRoutes.homeMainScreen);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.power_settings_new_sharp, color: Colors.red),
          Text(
            'Go Offline',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}

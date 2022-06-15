import 'package:conclase_tracnine/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeIconWidget extends StatelessWidget {
  const HomeIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xff62C6B7),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.notificationListScreen);
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

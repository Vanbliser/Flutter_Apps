import 'package:flutter/material.dart';

import '../../../../../../tracnine_library.dart';

onTripAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    style: TextButton.styleFrom(
      primary: Colors.red,
    ),
    child: const Text("Cancel"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );
  Widget dropOffButton = TextButton(
    style: TextButton.styleFrom(
        primary: Colors.white, backgroundColor: const Color(0xff62C6B7)),
    child: const Text("Drop-off"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
      appNavigator!.pushNamed(AppRoutes.homeMainScreen);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(child: Text("Confirm Drop-off ?")),
    content: const Text("Are you sure you want to drop-off package?"),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          cancelButton,
          dropOffButton,
        ],
      ),
    ],
  );

  // show the dialog
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

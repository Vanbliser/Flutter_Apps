import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
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
  Widget logOutButton = TextButton(
    style: TextButton.styleFrom(
        primary: Colors.white, backgroundColor: const Color(0xff62C6B7)),
    child: const Text("Log Out"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Center(child: Text("Log Out ?")),
    content: const Text("Are you sure you want to log out?"),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          cancelButton,
          logOutButton,
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

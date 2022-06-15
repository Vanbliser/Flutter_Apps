import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/api_page/model/user.dart';

class UserWidget extends StatelessWidget {
  final User user;
  const UserWidget(this.user, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'My name is ${user.firstName} ${user.lastName}\n'
      'email is ${user.email}',
      textAlign: TextAlign.center,
    ));
  }
}

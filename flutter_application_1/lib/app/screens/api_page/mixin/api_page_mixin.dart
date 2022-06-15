import 'dart:convert';

import 'package:flutter_application_1/app/screens/api_page/model/user.dart';
import 'package:http/http.dart' as http;

mixin APIPageMixin {
  final Uri url =
      Uri.parse("https://conclase-server.herokuapp.com/api/create/user");

  final Map<String, dynamic> body = {
    'firstName': 'blossom',
    'lastname': 'Ayogu',
    'email': 'ayblossom@outlook.com'
  };

  Future<User> createUser() async {
    http.Response response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw response.body;
    }
  }
}

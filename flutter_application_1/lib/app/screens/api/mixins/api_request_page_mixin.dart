import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../api_request_page.dart';

mixin APIPageMixin on State<ApiRequestPage>{
  var zones;
  dynamic getTimeZone() async {
    final String url = 'http://worldtimeapi.org/api/timezone';

    try {
      http.Response response = await http.get(Uri.parse(url));
      var zones = jsonDecode(response.body);
    } catch (error) {
      print('An error occured $error');
    }
  }

  void updateZone(body) {
    setState(() {
      zones = body;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route-names.dart';
import 'package:flutter_application_1/app/screens/api_page/widget/api_item_card.dart';

class ApiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API's"),
        ),
        body: ListView(children: [
          ApiItemCard(pagename: RouteNames.apiPage, title: 'Api Page')
        ]));
  }
}
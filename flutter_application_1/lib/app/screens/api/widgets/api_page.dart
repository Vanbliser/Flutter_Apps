import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route/route-names.dart';

import 'api_item_card.dart';

class ApiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API's"),
      ),
      body: ListView(
        children: [
          
          ApiItemCard(
              pagename: RouteNames.apiPage, title: 'Api Page'),
          //ApiItemCard(
          //    pagename: RouteNames.apiDeletePage, title: 'Api Delete Page'),
          // ApiItemCard(
          //     pagename: RouteNames.apiAuthenticatePage, title: 'Api Authenticate'),
          // ApiItemCard(
          //     pagename: RouteNames.apiDeletePage, title: 'Api Delete'),
          // ApiItemCard(
          //     pagename: RouteNames.apiFetchPage, title: 'Api Fetch'),
          // ApiItemCard(
          //     pagename: RouteNames.apiParsePage, title: 'Api Parse'),
          // ApiItemCard(
          //     pagename: RouteNames.apiRequestPage, title: 'Api Request'),
          // ApiItemCard(
          //     pagename: RouteNames.apiSendPage, title: 'Api Send'),
          // ApiItemCard(
          //     pagename: RouteNames.apiUpdatePage, title: 'Api Update'),
          // ApiItemCard(
          //     pagename: RouteNames.apiWebsocketPage, title: 'Api Websocket'),
        ],
      ),
    );
  }
}

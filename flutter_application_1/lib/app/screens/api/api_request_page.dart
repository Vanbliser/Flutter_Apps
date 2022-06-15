import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/api/mixins/api_request_page_mixin.dart';

class ApiRequestPage extends StatefulWidget {
  @override
  State<ApiRequestPage> createState() => _ApiRequestPageState();
}

class _ApiRequestPageState extends State<ApiRequestPage> with APIPageMixin{
  @override
  void initState() {
    super.initState();
    getTimeZone().then((body) => updateZone(body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APIs')),
      
        body: zones == null
            ? Center(child: Text('Loading...'))
            : Scrollbar(
              child: ListView(
                  children: zones
                      .map<Widget>(
                        (e) => Card(
                          child: ListTile(
                            title: Text(e),
                          ),
                        ),
                      )
                      .toList(),
                ),
            )
	 );
  }
}
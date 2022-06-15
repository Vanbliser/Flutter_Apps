import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/api_page/mixin/api_page_mixin.dart';
import 'package:flutter_application_1/app/screens/api_page/model/user.dart';
import 'package:flutter_application_1/app/screens/api_page/widget/api_error_widget.dart';
import 'package:flutter_application_1/app/screens/api_page/widget/user_widget.dart';
class ApiPage extends StatefulWidget {
  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> with APIPageMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API's"),
        ),
        body: FutureBuilder<User>(
            future: createUser(),
            builder: (_, snapshot) {
              if (snapshot.hasData) return UserWidget(snapshot.data!);
              if (snapshot.hasError) return APIErrorWidget();
              return Center(child: CircularProgressIndicator());
            }));
  }
}

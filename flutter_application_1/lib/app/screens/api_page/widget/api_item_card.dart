import 'package:flutter/material.dart';

class ApiItemCard extends StatelessWidget {
  String title, pagename;
  ApiItemCard({required this.pagename, required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, pagename);
        },
      ),
    );
  }
}

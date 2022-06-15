import 'package:flutter/material.dart';

class ApiItemCard extends StatelessWidget {
  final String pagename, title;

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

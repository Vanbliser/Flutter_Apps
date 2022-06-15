import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String pagename, title;

  HomeCard({required this.pagename, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, pagename);
        },
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
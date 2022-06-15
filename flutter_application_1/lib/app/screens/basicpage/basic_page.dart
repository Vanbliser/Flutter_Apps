import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/basicpage/appbar.dart';
import 'package:flutter_application_1/app/screens/basicpage/appliedRow.dart';
import 'package:flutter_application_1/app/screens/basicpage/cardRow.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          // Image(image: AssetImage('assets/profile_image.jpg')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Image.asset('assets/profile.png'),
          ),
          SizedBox(height: 30),
          RowApplied(),
          SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Complete Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 30),
          CardRow(),
          SizedBox(height: 30),
          Text('Buy Pro \$23.49',
              style: TextStyle(decoration: TextDecoration.underline))
        ],
      ),
    );
  }
}

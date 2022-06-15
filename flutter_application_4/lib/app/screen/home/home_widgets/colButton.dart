import 'package:flutter/material.dart';
import 'package:flutter_application_4/app/routes/route_names.dart';
import 'package:flutter_application_4/app/screen/home/home_widgets/colText.dart';

class ColButton extends StatelessWidget {
  final String data;
  ColButton({required this.data});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteName.getStartedPage);
      },
      child: ColSmallText(data: data),
      style: ElevatedButton.styleFrom(
        primary: Color(0xffFF3998),
        fixedSize: Size(250, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

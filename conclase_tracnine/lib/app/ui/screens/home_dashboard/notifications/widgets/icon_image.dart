import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconImage extends StatelessWidget {
  String images;
  double width;

  IconImage({Key? key, required this.images, required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(images),
          ),
        ),
      ),
    );
  }
}

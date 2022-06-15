import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    required this.cardColor,
    required this.cardWidth,
    required this.cardHeight,
    required this.cardPadding,
    required this.columnAlignment,
    required this.cardChildren,
    Key? key,
  }) : super(key: key);

  final Color cardColor;
  final double cardWidth;
  final double cardHeight;
  final EdgeInsetsGeometry cardPadding;
  final List<Widget> cardChildren;
  final MainAxisAlignment columnAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: cardPadding,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: columnAlignment,
        children: cardChildren,
      ),
    );
  }
}

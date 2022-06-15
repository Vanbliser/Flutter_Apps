import 'package:conclase_tracnine/app/ui/screens/home_dashboard/notifications/data/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> detailContent = [
  SizedBox(height:20.r),
  Container(
      margin: EdgeInsets.symmetric(vertical: 15.r),
      child: const TextDesign('Hello Richard,')),
  Container(
      margin: EdgeInsets.symmetric(vertical: 15.r),
      child: const TextDesign('Your wallet has been funded sucessfully')),
  Container(
    margin: EdgeInsets.symmetric(vertical: 15.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextDesign('Details below',
            fontWeight: FontWeight.bold, color: Colors.black),
        Row(children: const [TextDesign('Amount: '), TextDesign('₦300.00',color: Color(0xff62C6B7),)])
      ],
    ),
  ),
  Container(
    margin: EdgeInsets.symmetric(vertical: 15.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextDesign('Memo: Upfront payment for order with'),
        TextDesign('ID: 2103083a6d582353',color: Color(0xff8D9091))
      ],
    ),
  ),
  SizedBox(height:20.r),
  Container(
    margin: EdgeInsets.symmetric(vertical: 15.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextDesign('Reference: FLC06092124a1e496c9'),
        TextDesign('Date: 06 Sep 2021  15:15:17')
      ],
    ),
  ),
  SizedBox(height:50.r),
  Container(
      margin: EdgeInsets.symmetric(vertical: 15.r),
      child: const TextDesign('Cheers')),
];

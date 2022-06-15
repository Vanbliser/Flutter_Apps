import 'package:flutter/material.dart';

class CardColumn extends StatelessWidget {
  final String text, step, left;
  final IconData iconss;
  final Color colorr;
  CardColumn(
      {required this.text,
      required this.step,
      required this.left,
      required this.colorr,
      required this.iconss});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Color(0xffffffff),
            elevation: 0,
            child: SizedBox(
              height: 35,
              width: 35,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  iconss,//Icons.school_sharp,
                  color: colorr,//Color(0xff9bd6f2),
                  size: 30.0,
                ),
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Text(
            step,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_right_alt_rounded)
            ],
          ),
          Container(
            width: 35,
            height: 2,
            color: Colors.black,
          )
        ]);
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 40,
                child: Image.asset('assets/pics_image.png'),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hey,',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login Now.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 2.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'if you are new /',
                    style: TextStyle(
                      color: Color(0xffB9B9BD), //
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create New',
                      style: TextStyle(
                          color: Color(0xff2B2C37),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                //contentPadding: EdgeInsets.only(left: 25),
                enabled: false,
                suffixIcon: Container(
                  margin: EdgeInsets.only(top: 13, bottom: 13, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.flash_on_rounded,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                hintText: '   Dstudio_agency',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Color(0xff393A44),
                ),
                fillColor: Color(0xffFDCE84),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffE6E6E6),
                  filled: true,
                  hintText: '    Password',
                  hintStyle: TextStyle(color: Color(0xffB9B9BD), fontSize: 14)),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 2.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Forget Passcode? /',
                    style: TextStyle(
                      color: Color(0xffB9B9BD), //
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Color(0xff2B2C37),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 70),
            SizedBox(
              // height: 60,
              // width: 280,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffB12341),
                    fixedSize: Size(270, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 18))),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Skip Now',
                style: TextStyle(
                  color: Color(0xffB9B9BD),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

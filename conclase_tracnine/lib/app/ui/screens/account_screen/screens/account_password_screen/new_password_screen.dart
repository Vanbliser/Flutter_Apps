import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.r),
          child: Column(
            children: [
              const SizedBox(height: 105),
              Text(
                'New Password',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 108),
              TextFormField(
                //   keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    hintText: "New Password",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(height: 38),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(height: 80),
              ButtonWidget(
                title: 'Confirm',
                onpressed: () {},
                backIcon: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}

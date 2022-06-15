import 'package:conclase_tracnine/app/ui/common_widgets/button_widget.dart';
import 'package:conclase_tracnine/app/ui/common_widgets/text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestDocumentScreen extends StatelessWidget {
  const RequestDocumentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.r),
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Center(
                child: Text(
                  'Request Documents',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 100.h),
              const TextInputWidget(title: 'Title'),
              SizedBox(height: 10.h),
              SizedBox(
                height: 112.h,
                child: TextFormField(
                  maxLines: 5,
                  minLines: 3,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      hintText: 'Description',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      )),
                ),
              ),
              SizedBox(height: 40.h),
              ButtonWidget(
                title: 'Submit',
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

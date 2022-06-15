import 'package:conclase_tracnine/app/ui/screens/home_dashboard/in_app_call/screens/widgets/call_timer_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/in_app_call/screens/widgets/call_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/in_app_call/screens/widgets/end_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InAppCallScreen extends StatefulWidget {
  const InAppCallScreen({Key? key}) : super(key: key);

  @override
  State<InAppCallScreen> createState() => _InAppCallScreenState();
}

class _InAppCallScreenState extends State<InAppCallScreen> {
  Icon micIconOff = const Icon(Icons.mic_off);
  Icon micIcon = const Icon(Icons.mic);
  Icon muteIcon = const Icon(Icons.volume_up);
  Icon muteIconOff = const Icon(Icons.volume_mute);

  late Widget micValue;
  late Widget muteValue;

  @override
  void initState() {
    micValue = micIconOff;
    muteValue = muteIcon;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.2,
            repeat: ImageRepeat.repeat,
            image: AssetImage(
              'assets/images/pattern.png',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 350.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 80.r),
                      Text('Olatunji Olarinwaju',
                          style: TextStyle(fontSize: 30.r)),
                      const CallTimerWidget(),
                      const CallWidget()
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: const Color.fromARGB(255, 219, 214, 214),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 20.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        color: const Color(0xff8D9091),
                        iconSize: 35.r,
                        onPressed: () {
                          setState(() {
                            if (micValue == micIconOff) {
                              micValue = micIcon;
                            } else {
                              micValue = micIconOff;
                            }
                          });
                        },
                        icon: micValue),
                    const EndCallWidget(),
                    IconButton(
                        color: const Color(0xff8D9091),
                        iconSize: 35.r,
                        onPressed: () {
                          setState(() {
                            if (muteValue == muteIcon) {
                              muteValue = muteIconOff;
                            } else {
                              muteValue = muteIcon;
                            }
                          });
                        },
                        icon: muteValue),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mine/screen/in_app_calls/widgets/call_widget.dart';
import 'package:mine/screen/in_app_calls/widgets/end_call_widget.dart';

class InAppCallsPage extends StatefulWidget {
  const InAppCallsPage({Key? key}) : super(key: key);

  @override
  State<InAppCallsPage> createState() => _InAppCallsPageState();
}

class _InAppCallsPageState extends State<InAppCallsPage> {
  Icon micIcon = const Icon(Icons.mic_off, color: Color(0xff8D9091));
  Icon muteIcon = const Icon(Icons.volume_up,color: Color(0xff8D9091));
  mic () {
    setState(() {
      micIcon = const Icon(Icons.mic, color: Color(0xff8D9091));
    });
  }
  mute () {
    setState(() {
      micIcon = const Icon(Icons.volume_mute, color: Color(0xff8D9091));
    });
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
          children: [
            Column(
              children: [
                SizedBox(
                  width: 0.6.r,
                  height: 0.6.r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 0.2.h),
                      const Text('Olatunji Olarinwaju'),
                      const CallWidget()
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xffFAFAFA),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: mic, icon: micIcon),
                      const EndCallWidget(),
                      IconButton(onPressed: mute, icon: muteIcon),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

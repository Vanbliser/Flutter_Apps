import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallTimerWidget extends StatefulWidget {
  const CallTimerWidget({Key? key}) : super(key: key);

  @override
  State<CallTimerWidget> createState() => _CallTimerWidgetState();
}

class _CallTimerWidgetState extends State<CallTimerWidget> {
  int _minutes = 0, _seconds = 0;
  late Timer _counter;

  void timer() {
    _counter = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds == 59) {
          _seconds =-1;
          _minutes++;
        }
        _seconds++;
      });
    });
  }

  @override
  void initState() {
    timer();
    super.initState();
  }

  @override
  void dispose() {
    _counter.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
      style: TextStyle(fontSize: 18.r, color: const Color(0xffC5292A)),
    );
  }
}

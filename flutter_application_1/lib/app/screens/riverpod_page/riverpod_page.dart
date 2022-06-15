import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/riverpod_page/model/team_model.dart';
import 'package:flutter_application_1/app/screens/riverpod_page/widget/team_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodPage extends ConsumerWidget {
 
  // @override
  // void initState() {
  //   scoreA = 0;
  //   scoreB = 0;
  // }

  // void goalA() {
  //   setState(() {
  //     scoreA = scoreA++;
  //   });
  // }

  // void goalB() {
  //   setState(() {
  //     scoreB = scoreB++;
  //   });
  // }

  // void resetA() {
  //   setState(() {
  //     scoreA = 0;
  //   });
  // }

  // void resetB() {
  //   setState(() {
  //     scoreB = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod'),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Transform.rotate(
            angle: 3.14159,
            child: TeamWidget(
                team: TeamModel(goal: goal, label: label, reset: reset, score: score),),
          ),
          TeamWidget(team: TeamModel(goal: goal, label: label, reset: reset, score: score),),,),
        ]),
      ),
    );
  }
}

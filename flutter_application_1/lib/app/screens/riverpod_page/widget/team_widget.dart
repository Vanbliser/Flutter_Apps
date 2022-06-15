import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/riverpod_page/model/team_model.dart';

import 'button_widget.dart';

class TeamWidget extends StatefulWidget{
  TeamModel team;
  TeamWidget({required this.team});

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.team.score.toInt()}', style: TextStyle(fontSize: 100)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(onPressed: widget.team.goal, text: 'Goal!'),
              SizedBox(width: 20),
              ButtonWidget(onPressed: widget.team.reset, text: 'Reset')
            ],
          ),
          Text('Team ${widget.team.label}', style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}

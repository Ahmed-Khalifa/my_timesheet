import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_timesheet/providers/today_timesheet_provider.dart';
import 'package:provider/provider.dart';

enum STATE { startState, stopState }

class TimerButton extends StatefulWidget {
  const TimerButton({super.key});

  @override
  State<TimerButton> createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  Map<String, Map<String, dynamic>> workHours = {};
  Map<String, Map<String, dynamic>> breakHours = {};
  STATE state = STATE.stopState;

  @override
  void initState() {
    //getLastStatus();
    // TODO: implement initState
    super.initState();
  }

  //final f = DateFormat('dddd hh:mm');
  final f = DateFormat("dd/MM/yyyy HH:mm:ss a");

  @override
  Widget build(BuildContext context) {
    return state == STATE.stopState
        ? TextButton(
            onPressed: () {
              Provider.of<TodayTimesheetProvider>(context, listen: false)
                  .setWorkTime(DateTime.now().millisecondsSinceEpoch, 'work');

              setState(() {
                state = STATE.startState;
              });
              // print('started...');
              // print(f.format(DateTime.now()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
          )
        : TextButton(
            onPressed: () {
              Provider.of<TodayTimesheetProvider>(context, listen: false)
                  .setBreakTime(DateTime.now().millisecondsSinceEpoch, 'break');
              setState(() {
                state = STATE.stopState;
              });
              // print('stopped...');
              // print(f.format(DateTime.now()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Stop',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
          );
  }
}

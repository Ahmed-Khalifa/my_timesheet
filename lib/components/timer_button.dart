import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  final f = DateFormat.MMMEd();
  @override
  Widget build(BuildContext context) {
    TextButton textButton = TextButton(
      onPressed: () {
        print(f.format(DateTime.now()));
      },
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Start',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
    if (state == STATE.stopState) {
      textButton = TextButton(
        onPressed: () {
          setState(() {
            state = STATE.startState;
          });
          print('started...');
          print(f.format(DateTime.now()));
        },
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Start',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
      );
    } else if (state == STATE.startState) {
      textButton = TextButton(
        onPressed: () {
          setState(() {
            state = STATE.stopState;
          });
          print('stopped...');
          print(f.format(DateTime.now()));
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
    return textButton;
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_timesheet/providers/today_timesheet_provider.dart';
import 'package:provider/provider.dart';

enum STATE { startTimer, stopTimer }

class TimerButton extends StatefulWidget {
  TimerButton({super.key});

  @override
  State<TimerButton> createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  //final f = DateFormat('dddd hh:mm');
  final f = DateFormat.MMMEd();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(f.format(DateTime.now()));
      },
      child: const Text('Check in'),
    );
  }
}

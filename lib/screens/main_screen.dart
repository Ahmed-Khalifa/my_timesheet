import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_timesheet/components/timer_button.dart';
import 'package:my_timesheet/providers/today_timesheet_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              DateFormat.yMMMMEEEEd().format(DateTime.now()),
              textAlign: TextAlign.left,
              style:
                  const TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              // decoration: const BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //           offset: Offset.zero,
              //           spreadRadius: 3.0,
              //           blurRadius: 3.0,
              //           color: Colors.black12)
              //     ],
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Start Time: ',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w500),
                      ),
                      Text(0
                          .toString()) //Provider.of<TodayTimesheetProvider>(context).getStartTime()
                    ],
                  ),
                  Row(
                    children: [
                      const Text('End Time: ',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w500)),
                      Text(Provider.of<TodayTimesheetProvider>(context)
                          .getEndTime()
                          .toString())
                    ],
                  ),
                  const Divider(
                    thickness: 2.0,
                  ),
                  Row(
                    children: [
                      const Text('Total: ',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w500)),
                      Text(Provider.of<TodayTimesheetProvider>(context)
                          .getTotalTime()
                          .toString())
                    ],
                  ),
                  TimerButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

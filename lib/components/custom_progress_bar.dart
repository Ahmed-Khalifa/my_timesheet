import 'package:flutter/material.dart';
import 'package:my_timesheet/providers/today_timesheet_provider.dart';
import 'package:provider/provider.dart';

class CustomProgressBar extends StatefulWidget {
  const CustomProgressBar({super.key});

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  final double progressHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Row(
          children: [
            //listContainers(context)
            // Container(
            //   height: progressHeight,
            //   width: 70,
            //   color: Colors.green.withOpacity(0.50),
            // ),
            // Container(
            //   height: progressHeight,
            //   width: 30,
            //   color: Colors.red.withOpacity(0.50),
            // ),
            // Container(
            //   height: progressHeight,
            //   width: 50,
            //   color: Colors.green.withOpacity(0.50),
            // )
          ],
        ),
      ),
    );
  }

  // List<Container> listContainers(BuildContext context) {
  //   List<Container> containers = [];
  //   var data = Provider.of<TodayTimesheetProvider>(context, listen: false)
  //       .getTodayWorkHours();
  //   for (var d in data) {}
  // }
}

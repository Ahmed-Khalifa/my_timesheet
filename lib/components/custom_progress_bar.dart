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
    double widgetWidth = MediaQuery.of(context).size.width;
    print('Device width: $widgetWidth');
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Row(
          children: listContainers(context, widgetWidth),
        ),
      ),
    );
  }

  List<Container> listContainers(BuildContext context, double width) {
    List<Container> containers = [];
    var data = Provider.of<TodayTimesheetProvider>(context).getTodayWorkHours();

    for (var d in data) {
      int totalHours = 32400;
      var date = DateTime.fromMillisecondsSinceEpoch(int.parse(d.to));
      int timeDifference = date
          .difference(DateTime.fromMillisecondsSinceEpoch(int.parse(d.from)))
          .inSeconds;

      // double seconds = timeDifference % 100;
      // double minutes = se
      print('Time difference: ${timeDifference / totalHours}');
      Container container = Container(
        height: progressHeight,
        // width: double.parse(date.difference(DateTime.fromMillisecondsSinceEpoch(int.parse(d.to))).inMilliseconds)/context.size?.width,
        width: double.parse(timeDifference.toString()) > 0
            ? (timeDifference / totalHours) * width
            : 0.0,
        color: d.status == 'work' ? Colors.green : Colors.red,
      );
      containers.add(container);
    }
    return containers;
  }
}

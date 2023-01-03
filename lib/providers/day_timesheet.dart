import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DayTimesheetProvider with ChangeNotifier{
  String startTime = '';
  String endTime = '';
  String totalTime='';
  set setStartTime (String time) {
    startTime;
    notifyListeners();
  }
  set setEndTime (String time) {
    endTime;
    notifyListeners();
  }
  set setTotalTime (String time) {
    startTime;
    notifyListeners();
  }
}

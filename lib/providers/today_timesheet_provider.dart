import 'package:flutter/material.dart';
import 'package:my_timesheet/models/today_model/today_model.dart';

class TodayTimesheetProvider extends ChangeNotifier {
  List<TodayModel> todayWorkHours = [];

  final officialWorkHours = 9;
  int _workStartTime = 0;
  double _workEndTime = 0.0;
  double _totalWorkHours = 0;
  double _totalBreakHours = 0.0;
  List<String> workHours = [];

  void setStartTime(int time) {
    _workStartTime = time;
    notifyListeners();
  }

  // void setEndTime(int time) {
  //   _endTime = time;
  //   notifyListeners();
  // }

  // set setTotalTime(int time) {
  //   _totalTime = time;
  //   notifyListeners();
  // }

  // int getStartTime() {
  //   return _workStartTime;
  // }

  double getEndTime() {
    return _workEndTime;
  }

  double getTotalTime() {
    return _totalWorkHours;
  }
}

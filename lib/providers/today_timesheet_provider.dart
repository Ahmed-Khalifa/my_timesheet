import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_timesheet/models/today_model/today_model.dart';

class TodayTimesheetProvider extends ChangeNotifier {
  List<TodayModel> todayWorkHours = [];

  final officialWorkHours = 9;

  String _workTime = '';
  String _breakTime = '';
  String _status = '';

  double _totalWorkHours = 0;
  double _totalBreakHours = 0.0;
  List<String> workHours = [];
  List<String> breakHours = [];

  void setWorkTime(String time, String status) {
    _workTime = time;
    workHours.add(time);
    print(workHours);
    print(breakHours);
    notifyListeners();
  }

  void setBreakTime(String time, String status) {
    _breakTime = time;
    breakHours.add(_breakTime);
    print(workHours);
    print(breakHours);
    notifyListeners();
  }

  // void setStatus(String status) {
  //   _status = status;
  //   notifyListeners();
  // }

  void setTodayModel(String newPeriod) {
    var data = jsonDecode(newPeriod);
    TodayModel period = TodayModel.fromJson(data);
    todayWorkHours.add(period);
    print(todayWorkHours);
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

  String getWorkime() {
    return _workTime;
  }

  double getTotalTime() {
    return _totalWorkHours;
  }
}

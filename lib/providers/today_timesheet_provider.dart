import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_timesheet/models/today_model/today_model.dart';

class TodayTimesheetProvider extends ChangeNotifier {
  List<TodayModel> todayWorkHours = [];

  final officialWorkHours = 9;

  int _workTime = 0;
  int _breakTime = 0;
  String _status = '';
  int counter = 0;

  double _totalWorkHours = 0;
  double _totalBreakHours = 0.0;
  List<int> workHours = [];
  List<int> breakHours = [];

  void setWorkTime(int time, String status) {
    _workTime = time;
    _status = status;
    workHours.add(time);
    setTodayModel();
    // print(workHours);
    // print(breakHours);
    notifyListeners();
  }

  void setBreakTime(int time, String status) {
    _breakTime = time;
    _status = status;
    breakHours.add(_breakTime);
    setTodayModel();
    // print(workHours);
    // print(breakHours);
    notifyListeners();
  }

  List<TodayModel> getTodayWorkHours() {
    return todayWorkHours;
  }

  void setTodayModel() {
    if (_workTime != 0 && _breakTime != 0) {
      if (_workTime > _breakTime) {
        TodayModel period = TodayModel.fromJson({
          "from": _breakTime.toString(),
          "to": _workTime.toString(),
          "status": _status
        });
        todayWorkHours.add(period);
      } else if (_workTime < _breakTime) {
        TodayModel period = TodayModel.fromJson({
          "from": _workTime.toString(),
          "to": _breakTime.toString(),
          "status": _status
        });
        todayWorkHours.add(period);
      }
    }
    for (var model in todayWorkHours) {
      print(model.to);
    }
    // print(todayWorkHours);
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

  int getWorkime() {
    return _workTime;
  }

  double getTotalTime() {
    return _totalWorkHours;
  }
}

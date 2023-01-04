import 'package:flutter/material.dart';

class TodayTimesheetProvider extends ChangeNotifier {
  int _startTime = 0;
  int _endTime = 0;
  int _totalTime = 0;

  void setStartTime(int time) {
    _startTime = time;
    notifyListeners();
  }

  void setEndTime(int time) {
    _endTime = time;
    notifyListeners();
  }

  set setTotalTime(int time) {
    _totalTime = time;
    notifyListeners();
  }

  int getStartTime() {
    return _startTime;
  }

  int getEndTime() {
    return _endTime;
  }

  int getTotalTime() {
    return _totalTime;
  }
}

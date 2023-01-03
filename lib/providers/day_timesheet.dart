import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DayTimesheet extends StatelessWidget with ChangeNotifier{
  DayTimesheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    notifyListeners();
    return const Placeholder();
  }
}

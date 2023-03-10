import 'package:flutter/material.dart';
import 'package:my_timesheet/providers/today_timesheet_provider.dart';
import 'package:my_timesheet/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  runApp(const MyApp());
  windowManager.setResizable(true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodayTimesheetProvider>(
            create: (_) => TodayTimesheetProvider()),
        // Provider<SomethingElse>(create: (_) => SomethingElse()),
        // Provider<AnotherThing>(create: (_) => AnotherThing()),
      ],
      child: MaterialApp(
        title: 'My Timesheet',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(title: 'My Timesheet'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
            SizedBox(
              height: progressHeight,
              width: 100,
              child: Container(
                color: Colors.green.withOpacity(0.50),
              ),
            ),
            Container(
              height: progressHeight,
              width: 30,
              color: Colors.red.withOpacity(0.50),
            ),
            Container(
              height: progressHeight,
              width: 50,
              color: Colors.green.withOpacity(0.50),
            )
          ],
        ),
      ),
    );
  }
}

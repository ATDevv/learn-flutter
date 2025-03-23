import 'dart:math';

import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({
    super.key,
    required this.time,
    required this.task,
    required this.amPm,
  });

  final String time;
  final String amPm;
  final String task;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Text(
              amPm,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(width: 40),
        Container(
          width: 6,
          height: 50,
          color: Color.fromRGBO(
            Random().nextInt(256),
            Random().nextInt(256),
            Random().nextInt(256),
            0.4,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 79, 44, 221),
                letterSpacing: -0.5,
                fontFamily: "Times New Roman",
              ),
            ),
            Text(
              'Flutter',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}

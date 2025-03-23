import 'dart:math';

import 'package:flutter/material.dart';
// import 'build_container.dart';
import 'calendar.dart';
import 'task.dart';

void main() {
  runApp(const MainApp());
}

final List<Map<String, dynamic>> subj = [
  {
    "time": "07:00",
    "amPm": "AM",
    "task": "CTDL & GT",
  },
  {
    "time": "09:00",
    "amPm": "AM",
    "task": "Lí thuyết thông tin",
  },
  {
    "time": "13:00",
    "amPm": "PM",
    "task": "Tư tưởng HCM",
  },
  {
    "time": "15:00",
    "amPm": "PM",
    "task": "Toán rời rạc 2",
  },
];

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color colorBtn = Colors.red;
  late int ran = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'D1aa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Calendar(numberDay: '15', day: 'Mon'),
                    Calendar(numberDay: '16', day: 'Tue'),
                    Calendar(numberDay: '17', day: 'Wed'),
                    Calendar(numberDay: '18', day: 'Thu'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Task(
                      time: subj[ran]['time'],
                      task: subj[ran]['task'],
                      amPm: subj[ran]['amPm']),
                ),
              ],
            ),
          ),
          floatingActionButton: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99),
              color: colorBtn,
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () => {
                setState(() {
                  colorBtn = Color.fromRGBO(
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                    0.4,
                  );
                  ran = Random().nextInt(4);
                })
              },
              child: Icon(Icons.refresh),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic/ace.dart';
import 'package:flutter_basic/frieza_horizontal.dart';
import 'package:flutter_basic/gojo.dart';
import 'package:flutter_basic/toji.dart';
import 'package:flutter_basic/viruss.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gojo(),
                  FriezaHorizontal(),
                  Ace(),
                  Toji(),
                  Viruss()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic/list_nutrition.dart';
import 'meal.dart';
import 'app_bar_food.dart';
import 'cur_nutrition.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Scaffold(
            appBar: AppBar(
              title: AppBarFood(),
              backgroundColor: Colors.white,
              toolbarHeight: 80,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Column(
                  children: [
                    Meal(),
                    SizedBox(height: 20),
                    Divider(
                      height: 10,
                      thickness: 3,
                    ),
                    CurNutrition(number: '452'),
                    SizedBox(height: 20),
                    ListNutrition(name: 'Fried Eggs', volume: '100g'),
                    ListNutrition(name: 'Muf of coffee', volume: '450ml'),
                    ListNutrition(name: 'Fried Eggs', volume: '100g'),
                    ListNutrition(name: 'Muf of coffee', volume: '450ml'),
                    ListNutrition(name: 'Fried Eggs', volume: '100g'),
                    ListNutrition(name: 'Muf of coffee', volume: '450ml'),
                    ListNutrition(name: 'Fried Eggs', volume: '100g'),
                    ListNutrition(name: 'Muf of coffee', volume: '450ml'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

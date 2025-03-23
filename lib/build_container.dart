import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.yellow, border: Border.all(color: color, width: 3)),
      child: Center(child: Text(text)),
    );
  }
}

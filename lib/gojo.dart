import 'package:flutter/material.dart';

class Gojo extends StatelessWidget {
  const Gojo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/gojo.webp',
                  height: 500,
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/gojo.webp',
                  height: 500,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

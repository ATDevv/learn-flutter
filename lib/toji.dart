import 'package:flutter/material.dart';

class Toji extends StatelessWidget {
  const Toji({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 3,
        ),
        SizedBox(
          height: 500,
          // width: 500,
          child: Stack(
            alignment: Alignment(0.1, -0.6),
            children: [
              Image.asset(
                'assets/images/TojiRender.webp',
                height: 400,
                width: 500,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}

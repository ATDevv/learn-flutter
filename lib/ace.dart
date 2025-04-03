import 'package:flutter/material.dart';

class Ace extends StatelessWidget {
  const Ace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 3,
        ),
        SizedBox(
          height: 400,
          width: 500,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/ace.png',
                height: 400,
                width: 500,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.white,),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class FriezaHorizontal extends StatelessWidget {
  const FriezaHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Divider(
          thickness: 3,
        ),
        SizedBox(
          height: 400,
          width: 500,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      'assets/images/frieza.webp',
                      height: 400,
                      width: 500,
                    )
                  ],
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      'assets/images/frieza.webp',
                      height: 400,
                      width: 500,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

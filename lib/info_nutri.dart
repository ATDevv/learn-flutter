import 'dart:math';
import 'package:flutter/material.dart';

class InfoNutri extends StatelessWidget {
  const InfoNutri({
    super.key,
    required this.name,
    this.gam,
    this.isBox = false,
    this.gam2,
  });

  final String name;
  final bool isBox;
  final String? gam2, gam;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),
        isBox
            ? Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: Color.fromRGBO(
                      Random().nextInt(256),
                      Random().nextInt(256),
                      Random().nextInt(256),
                      0.7,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    gam2 ?? '12g',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 4,
                    color: Colors.grey,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 35,
                        child: Divider(
                          height: 10,
                          thickness: 3,
                          color: Color.fromRGBO(
                            Random().nextInt(256),
                            Random().nextInt(256),
                            Random().nextInt(256),
                            0.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(gam ?? '23/11g'),
                ],
              )
      ],
    );
  }
}

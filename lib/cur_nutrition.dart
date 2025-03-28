import 'package:flutter/material.dart';
import 'package:flutter_basic/info_nutri.dart';

class CurNutrition extends StatelessWidget {
  const CurNutrition({super.key, required this.number});

  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'kcal',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              width: 75,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  'Nomarl',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InfoNutri(name: 'Protein', gam: '13/80g'),
            InfoNutri(name: 'Fat', gam: '20/60g'),
            InfoNutri(name: 'Carbs', gam: '19/200g'),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basic/info_nutri.dart';

class ListNutrition extends StatelessWidget {
  const ListNutrition({super.key, required this.name, required this.volume});

  final String name, volume;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          color: Color.fromRGBO(241, 238, 237, 1),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.edit,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '378',
                          style: TextStyle(
                            fontSize: 35,
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
                    Text(
                      volume,
                      style: TextStyle(
                        // fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoNutri(
                      name: 'Protein',
                      gam2: '12g',
                      isBox: true,
                    ),
                    InfoNutri(
                      name: 'Fat',
                      gam2: '17g',
                      isBox: true,
                    ),
                    InfoNutri(
                      name: 'Carbs',
                      gam2: '17g',
                      isBox: true,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

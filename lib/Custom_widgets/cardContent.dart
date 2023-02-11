import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

//cardContent widget

// const cardTextStyle = TextStyle(
//   fontSize: 18.0,
//   color: Color(0xFF8D8E98),
// );

class CardContent extends StatelessWidget {
  CardContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          label,
          style: cardTextStyle,
        ),
      ],
    );
  }
}

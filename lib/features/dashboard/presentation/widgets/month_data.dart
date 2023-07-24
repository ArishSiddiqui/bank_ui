//import 'package:flutter/cupertino.dart';
import 'package:banking_app_ui/core/constant/constant_variables.dart';
import 'package:flutter/material.dart';

class MonthData extends StatelessWidget {
  final String date;
  final String day;
  final int per;
  MonthData({
    required this.date,
    required this.day,
    required this.per,
    super.key,
  });

  final double barHeight = screenHeight * 0.18;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: barHeight,
          width: 25.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.grey[400],
          ),
          child: Container(
            height: barHeight * (per / 100),
            width: 25.0,
            // constraints: BoxConstraints(
            //   maxHeight: barHeight * (per / 100),
            // ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          date,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        Text(
          day,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

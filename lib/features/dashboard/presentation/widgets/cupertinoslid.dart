import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertinoslide extends StatelessWidget {
  const cupertinoslide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      child: CupertinoSlidingSegmentedControl(children: {
        0: bildsigment(
          "Weekly",
        ),
        1: bildsigment(
          "Montly",
        )
      }, onValueChanged: (value) {}),
    );
  }
}

Widget bildsigment(String text) => Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      padding: EdgeInsets.fromLTRB(20, 10, 60, 20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          text,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );

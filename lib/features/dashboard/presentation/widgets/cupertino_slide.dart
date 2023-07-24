import 'package:flutter/cupertino.dart';

class CupertinoSlide extends StatelessWidget {
  const CupertinoSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
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
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

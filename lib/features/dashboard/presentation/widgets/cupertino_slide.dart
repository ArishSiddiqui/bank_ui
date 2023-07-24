import 'package:flutter/cupertino.dart';

class CupertinoSlide extends StatelessWidget {
  const CupertinoSlide({super.key});

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
      // padding: EdgeInsets.fromLTRB(20, 12, 60, 18),
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );

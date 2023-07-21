import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../widgets/custom_button2.dart';

class dashboardpage extends StatefulWidget {
  const dashboardpage({super.key});

  @override
  State<dashboardpage> createState() => _dashboardpageState();
}

class _dashboardpageState extends State<dashboardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "Analytics",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              height: 60,
              width: 250,
              child: CupertinoSlidingSegmentedControl(children: {
                0: Text(
                  "Weekly",
                  style: TextStyle(fontSize: 20),
                ),
                1: Text(
                  "Montly",
                  style: TextStyle(fontSize: 20),
                )
              }, onValueChanged: (value) {}))
        ],
      ),
    );
  }
}

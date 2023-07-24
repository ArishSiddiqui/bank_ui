//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonthData extends StatelessWidget {
  const MonthData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      // width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "17",
                style: TextStyle(color: Colors.black),
              ),
              Text(" MON")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "18",
                style: TextStyle(color: Colors.black),
              ),
              Text(" TUE")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "19",
                style: TextStyle(color: Colors.black),
              ),
              Text("WED")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "20",
                style: TextStyle(color: Colors.black),
              ),
              Text("THU ")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "21",
                style: TextStyle(color: Colors.black),
              ),
              Text("FRI")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "22",
                style: TextStyle(color: Colors.black),
              ),
              Text("SAT")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "23",
                style: TextStyle(color: Colors.black),
              ),
              Text("SUN")
            ],
          )
        ],
      ),
    );
  }
}

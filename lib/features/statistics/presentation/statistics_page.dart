//import 'dart:convert';

import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  List<String> dateList = ['Day', 'Week', 'Month', 'Year'];

  String selectedIndex = "Day";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(children: [
                  Text(
                    'Statistics',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notification_add,
                    color: Colors.white,
                  )
                ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lime),
                    child: Center(
                      child: Container(
                        height: 210,
                        width: 250,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Padding(
                          padding: EdgeInsets.all(60.0),
                          child: Column(
                            children: [
                              Text(
                                'Spent this month',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white60),
                              ),
                              Text(
                                '\$3,650.34',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: dateList
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = e;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 18,
                                      //fontWeight: FontWeight.bold,
                                      color: selectedIndex != e
                                          ? Colors.grey
                                          : Colors.white),
                                ),
                              ),
                            ),
                          )
                          .toList()),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  // color: Colors.white,
                  height: 320,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 18, 15, 15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Spending Categories',
                          style: TextStyle(
                              fontSize: 22,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 37, 35, 35),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.lens_rounded,
                                          size: 33,
                                          color: Color.fromARGB(
                                              255, 135, 247, 236),
                                        ),
                                        Text(
                                          ' Shopping',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 222, 214, 214),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' \$2,056.30',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 222, 214, 214),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '56%',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 222, 214, 214),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          // margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 37, 35, 35),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.lens_rounded,
                                          size: 33,
                                          color:
                                              Color.fromARGB(255, 60, 115, 233),
                                        ),
                                        Text(
                                          ' Shopping',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 222, 214, 214),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      ' \$841.30',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 222, 214, 214),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      ' 23%',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 222, 214, 214),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

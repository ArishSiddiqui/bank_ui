import 'package:banking_app_ui/core/constant/constant_variables.dart';
import 'package:banking_app_ui/features/dashboard/presentation/widgets/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//import '../widgets/custom_button2.dart';

class Dashboardpage extends StatefulWidget {
  const Dashboardpage({super.key});

  @override
  State<dashboardpage> createState() => _dashboardpageState();
}

class _dashboardpageState extends State<dashboardpage> {
  @override
  Widget build(BuildContext context) {
    // This line should be removed
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    //
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Analytics",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CupertinoSlide(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              padding: const EdgeInsets.all(15.0),
              width: double.infinity,
              height: screenHeight * 0.45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 15,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'April 2023',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "USD 24,000.00",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Expense and Income Total",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: data
                        .map(
                          (e) => MonthData(
                            date: e['date'].toString(),
                            day: e['day'],
                            per: e['per'],
                          ),
                        )
                        .toList(),
                  )
                  // ListView.builder(
                  //   itemBuilder: (context, index) => MonthData(
                  //     date: '12',
                  //     day: 'MON',
                  //     per: 25,
                  //   ),
                  // ),
                ],
              ),
            ),

            // MonthData(),
            // const Padding(
            //   padding: EdgeInsets.only(right: 15, left: 10),
            //   child: CupertinoSlide(),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // MonthData(),
            // const Padding(
            //   padding:  EdgeInsets.only(right: 100),
            //   child: Text(
            //     "Recent Transaction",
            //     style: TextStyle(fontSize: 28),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

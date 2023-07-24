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
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                "Analytics",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15, left: 10),
              child: cupertinoslide(),
            ),
            SizedBox(
              height: 15,
            ),
            MonthData(),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Recent Transaction",
                style: TextStyle(fontSize: 28),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:banking_app_ui/features/dashboard/presentation/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
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
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 8),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 220),
              child: Text(
                "Analytics",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
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

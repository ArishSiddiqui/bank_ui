// import 'package:banking_app_ui/features/dashboard/presentation/widgets/profile_container.dart';
import 'package:banking_app_ui/features/dashboard/presentation/widgets/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//import '../widgets/custom_button2.dart';

class Dashboardpage extends StatefulWidget {
  const Dashboardpage({super.key});

  @override
  State<Dashboardpage> createState() => _dashboardpageState();
}

class _dashboardpageState extends State<Dashboardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(right: 220),
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
              child: Cupertinoslide(),
            ),
            SizedBox(
              height: 15,
            ),
            MonthData(),
            Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text(
                "Recent Transaction",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300),
              child: Column(
                children: [
                  const Text(
                    'Akhil Gadwal',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Flutter Dev',
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

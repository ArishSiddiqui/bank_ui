//import 'package:banking_app_ui/features/welcome/presentation/pages/welcome_page.dart';
import 'package:banking_app_ui/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:banking_app_ui/features/welcome/presentation/pages/welcome_page.dart';
import 'package:flutter/material.dart';

//import 'features/welcome/presentation/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: dashboardpage());
  }
}

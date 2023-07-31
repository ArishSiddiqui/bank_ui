// import 'package:banking_app_ui/core/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../config/routes/route_constants.dart';
import '../widgets/widegts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              height: 420,
              width: mediaQuery.size.width,
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFGVOcDJXoRg3T1gHQ0yozFATwaV0WlT-tA&usqp=CAU",
            ),
            const Text(
              'Innovative Digital',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Financial Planner and',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Management',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Designed to help you manage your finances',
              style: TextStyle(color: Colors.grey.shade500),
            ),
            Text(
              'easily and efficiently',
              style: TextStyle(color: Colors.grey.shade500),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(onPressed: () => context.go(PagePath.home)),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

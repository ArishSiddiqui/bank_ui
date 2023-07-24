import 'package:flutter/material.dart';
import '../../../home/presentations/pages/home_page.dart';
import '../widgets/widegts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({super.key});

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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFGVOcDJXoRg3T1gHQ0yozFATwaV0WlT-tA&usqp=CAU",
              height: 480,
              width: mediaQuery.size.width,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "    Innovative Digital Financial Planner And ",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "  Management ",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Text(
                  "  Designed to help you manage youre  ",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "  easily and efficianty",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    )),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 60,
                  ),
                  child: Text("    Already Have and Account?"),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Login",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

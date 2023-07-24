import 'package:banking_app_ui/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww&w=1000&q=80'),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 12),
                      ),
                      const Text(
                        'jonas Khanved',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboardpage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.notifications_none),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:banking_app_ui/core/routes/route_constants.dart';
// import 'package:banking_app_ui/features/profile/data/model/profile_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/route_constants.dart';

class ProfilePage extends StatefulWidget {
  final String label;
  final String newname;
  final String newdesignation;
  //final ProfileDetails details;
  const ProfilePage({
    super.key,
    required this.label,
    required this.newname,
    required this.newdesignation,
    // required this.details,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Icon(Icons.arrow_back_ios_new),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: screenwidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => context.pop(PagePath.home),
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.label,
                        style: const TextStyle(fontSize: 24),
                      ),
                      const Icon(Icons.verified),
                    ],
                  ),
                  const Icon(Icons.linear_scale)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1606406054219-619c4c2e2100?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2hpbmVzZSUyMGdpcmx8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                  radius: 70,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  widget.newname,
                  //'JenniferMusk',
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  //  'Singer & Dancer',
                  widget.newdesignation,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 350,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '450',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '10.9 M',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '950',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '950 M',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
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

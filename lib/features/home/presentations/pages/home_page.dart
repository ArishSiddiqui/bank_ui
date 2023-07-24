import 'package:banking_app_ui/core/constant/constant_variables.dart';
import 'package:banking_app_ui/features/home/presentations/widgets/credit_card.dart';
import 'package:banking_app_ui/features/home/presentations/widgets/profile_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/money_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Add the following function to handle navigation item taps
  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ProfileBar(),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CCImage(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Send Again',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: const BoxConstraints(minHeight: 100),
                  padding: const EdgeInsets.all(12),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) => index == 0
                        ? Container(
                            height: 40,
                            width: 60,
                            child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 25,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text('Add'),
                                ]),
                          )
                        : Container(
                            height: 40,
                            width: 60,
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww&w=1000&q=80'),
                                ),
                                SizedBox(height: 4),
                                Text('data')
                              ],
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Transcations',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade200),
                height: 180,
                width: 330,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: PriceContainer(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

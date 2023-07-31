import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNav extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNav({
    super.key,
    required this.navigationShell,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
          NavigationDestination(
              label: 'Dashboard', icon: Icon(Icons.dashboard)),
        ],
        onDestinationSelected: _goBranch,
      ),

      // BottomNavigationBar(
      //   currentIndex: navigationShell.currentIndex,
      //   onTap: _goBranch,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         //color: Colors.blue,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.dashboard,
      //         // color: Colors.blue,
      //       ),
      //       label: 'DashBoard',
      //     ),
      //   ],
      // ),
    );
  }
}

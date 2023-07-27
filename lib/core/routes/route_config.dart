import 'package:banking_app_ui/core/routes/route_constants.dart';
import 'package:banking_app_ui/features/home/presentations/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/bottom_navigation/presentations/pages/bottom_navigation.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/welcome/presentation/pages/welcome_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
// For each branch you have to create each specific key.
final _homeKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _dashKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  // initialLocation: PagePath.home,
  routes: <RouteBase>[
    GoRoute(
      path: PagePath.welcome,
      // builder: (BuildContext context, GoRouterState state) {
      //   return WelcomePage();
      // },
      pageBuilder: (context, state) => MaterialPage(
        child: WelcomePage(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return BottomNav(navigationShell: navigationShell);
      },
      branches: [
        // first branch (Home)
        StatefulShellBranch(
          navigatorKey: _homeKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: PagePath.home,
              pageBuilder: (context, state) => const MaterialPage(
                child: HomePage(),
              ),
              // routes: [
              //   // child route
              //   GoRoute(
              //     path: 'details',
              //     builder: (context, state) => const DetailsScreen(label: 'A'),
              //   ),
              // ],
            ),
          ],
        ),
        // second branch (Dashboard)
        StatefulShellBranch(
          navigatorKey: _dashKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: PagePath.dashboard,
              pageBuilder: (context, state) => const MaterialPage(
                child: Dashboardpage(),
              ),
              // routes: [
              //   // child route
              //   GoRoute(
              //     path: 'details',
              //     builder: (context, state) => const DetailsScreen(label: 'B'),
              //   ),
              // ],
            ),
          ],
        ),
      ],
    ),
    // GoRoute(
    //   path: PagePath.home,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const HomePage();
    //   },
    // ),
  ],
);

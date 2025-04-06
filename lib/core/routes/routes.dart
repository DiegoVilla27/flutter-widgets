import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:flutter_widgets/presentation/screens/cards/cards_screen.dart';
import 'package:flutter_widgets/presentation/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

/// Defines the application's routing configuration using GoRouter.
/// 
/// This class provides static list routes paths.
/// It initializes a `GoRouter` instance with a list of routes,
/// where each route is associated with a specific screen widget.
class AppRoutes {
  static const String home = '/';
  static const String buttons = '/buttons';
  static const String cards = '/cards';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: buttons,
            builder: (BuildContext context, GoRouterState state) {
              return const ButtonsScreen();
            },
          ),
          GoRoute(
            path: cards,
            builder: (BuildContext context, GoRouterState state) {
              return const CardsScreen();
            },
          ),
        ],
      ),
    ],
  );
}

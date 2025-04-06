import 'package:flutter_widgets/presentation/screens/screens.dart';
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
    initialLocation: home,
    routes: <RouteBase>[
      GoRoute(path: home, builder: (_, _) => const HomeScreen()),
      GoRoute(path: buttons, builder: (_, _) => const ButtonsScreen()),
      GoRoute(path: cards, builder: (_, _) => const CardsScreen()),
    ],
  );
}

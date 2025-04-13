import 'package:flutter_widgets/presentation/screens/progress/progress_screen.dart';
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
  static const String progress = '/progress';
  static const String snackbar = '/snackbar';
  static const String dialog = '/dialog';
  static const String animatedcontainer = '/animatedcontainer';
  static const String checkbox = '/checkbox';
  static const String expansion = '/expansion';
  static const String radios = '/radios';
  static const String switches = '/switch';
  static const String pageview = '/pageview';
  static const String listview = '/listview';
  static const String refresh = '/refresh';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: <RouteBase>[
      GoRoute(path: home, builder: (_, _) => const HomeScreen()),
      GoRoute(path: buttons, builder: (_, _) => const ButtonsScreen()),
      GoRoute(path: cards, builder: (_, _) => const CardsScreen()),
      GoRoute(path: progress, builder: (_, _) => const ProgressScreen()),
      GoRoute(path: snackbar, builder: (_, _) => const SnackbarScreen()),
      GoRoute(path: dialog, builder: (_, _) => const DialogScreen()),
      GoRoute(path: animatedcontainer, builder: (_, _) => const AnimatedContainerScreen()),
      GoRoute(path: checkbox, builder: (_, _) => const CheckboxScreen()),
      GoRoute(path: expansion, builder: (_, _) => const ExpansionScreen()),
      GoRoute(path: radios, builder: (_, _) => const RadiosScreen()),
      GoRoute(path: switches, builder: (_, _) => const SwitchesScreen()),
      GoRoute(path: pageview, builder: (_, _) => const PageViewScreen()),
      GoRoute(path: listview, builder: (_, _) => const ListViewScreen()),
      GoRoute(path: refresh, builder: (_, _) => const RefreshScreen()),
    ],
    errorBuilder: (_, _) => const NotFoundScreen()
  );
}

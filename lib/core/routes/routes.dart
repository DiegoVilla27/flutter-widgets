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
  static const String center = '/center';
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
  static const String align = '/align';
  static const String padding = '/padding';
  static const String transform = '/transform';
  static const String column = '/column';
  static const String row = '/row';
  static const String stack = '/stack';
  static const String expanded = '/expanded';
  static const String gridview = '/gridview';
  static const String listtile = '/listtile';
  static const String wrap = '/wrap';
  static const String table = '/table';
  static const String container = '/container';
  static const String sizedbox = '/sizedbox';
  static const String contrainedbox = '/constrainedbox';
  static const String decoratedbox = '/decoratedbox';
  static const String textfield = '/textfield';
  static const String slider = '/slider';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: <RouteBase>[
      GoRoute(path: home, builder: (_, _) => const HomeScreen()),
      GoRoute(path: center, builder: (_, _) => const CenterScreen()),
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
      GoRoute(path: align, builder: (_, _) => const AlignScreen()),
      GoRoute(path: padding, builder: (_, _) => const PaddingScreen()),
      GoRoute(path: transform, builder: (_, _) => const TransformScreen()),
      GoRoute(path: column, builder: (_, _) => const ColumnScreen()),
      GoRoute(path: row, builder: (_, _) => const RowScreen()),
      GoRoute(path: stack, builder: (_, _) => const StackScreen()),
      GoRoute(path: expanded, builder: (_, _) => const ExpandedScreen()),
      GoRoute(path: gridview, builder: (_, _) => const GridViewScreen()),
      GoRoute(path: listtile, builder: (_, _) => const ListTileScreen()),
      GoRoute(path: wrap, builder: (_, _) => const WrapScreen()),
      GoRoute(path: table, builder: (_, _) => const TableScreen()),
      GoRoute(path: container, builder: (_, _) => const ContainerScreen()),
      GoRoute(path: sizedbox, builder: (_, _) => const SizedBoxScreen()),
      GoRoute(path: contrainedbox, builder: (_, _) => const ConstrainedBoxScreen()),
      GoRoute(path: decoratedbox, builder: (_, _) => const DecoratedBoxScreen()),
      GoRoute(path: textfield, builder: (_, _) => const TextFieldScreen()),
      GoRoute(path: slider, builder: (_, _) => const SliderScreen()),
    ],
    errorBuilder: (_, _) => const NotFoundScreen()
  );
}

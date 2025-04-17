import 'package:flutter_widgets/core/routes/routes_names.dart';
import 'package:flutter_widgets/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

/// Configures the application's routing using GoRouter.
///
/// This class defines a static `GoRouter` instance with a comprehensive list
/// of routes, each associated with a specific screen widget. It includes
/// nested routes for detailed navigation, such as the hero details route.
/// The initial route is set to the home screen, and an error screen is
/// provided for undefined routes.
class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        name: AppRoutesNamed.home,
        path: '/',
        builder: (_, _) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.center,
        path: '/center',
        builder: (_, _) => const CenterScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.buttons,
        path: '/buttons',
        builder: (_, _) => const ButtonsScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.cards,
        path: '/cards',
        builder: (_, _) => const CardsScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.progress,
        path: '/progress',
        builder: (_, _) => const ProgressScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.snackbar,
        path: '/snackbar',
        builder: (_, _) => const SnackbarScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.dialog,
        path: '/dialog',
        builder: (_, _) => const DialogScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.animatedcontainer,
        path: '/animatedcontainer',
        builder: (_, _) => const AnimatedContainerScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.checkbox,
        path: '/checkbox',
        builder: (_, _) => const CheckboxScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.expansion,
        path: '/expansion',
        builder: (_, _) => const ExpansionScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.radios,
        path: '/radios',
        builder: (_, _) => const RadiosScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.switches,
        path: '/switches',
        builder: (_, _) => const SwitchesScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.pageview,
        path: '/pageview',
        builder: (_, _) => const PageViewScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.listview,
        path: '/listview',
        builder: (_, _) => const ListViewScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.refresh,
        path: '/refresh',
        builder: (_, _) => const RefreshScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.align,
        path: '/align',
        builder: (_, _) => const AlignScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.padding,
        path: '/padding',
        builder: (_, _) => const PaddingScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.transform,
        path: '/transform',
        builder: (_, _) => const TransformScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.column,
        path: '/column',
        builder: (_, _) => const ColumnScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.row,
        path: '/row',
        builder: (_, _) => const RowScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.stack,
        path: '/stack',
        builder: (_, _) => const StackScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.expanded,
        path: '/expanded',
        builder: (_, _) => const ExpandedScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.gridview,
        path: '/gridview',
        builder: (_, _) => const GridViewScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.listtile,
        path: '/listtile',
        builder: (_, _) => const ListTileScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.wrap,
        path: '/wrap',
        builder: (_, _) => const WrapScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.table,
        path: '/table',
        builder: (_, _) => const TableScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.container,
        path: '/container',
        builder: (_, _) => const ContainerScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.sizedbox,
        path: '/sizedbox',
        builder: (_, _) => const SizedBoxScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.contrainedbox,
        path: '/contrainedbox',
        builder: (_, _) => const ConstrainedBoxScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.decoratedbox,
        path: '/decoratedbox',
        builder: (_, _) => const DecoratedBoxScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.textfield,
        path: '/textfield',
        builder: (_, _) => const TextFieldScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.slider,
        path: '/slider',
        builder: (_, _) => const SliderScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.rangeslider,
        path: '/rangeslider',
        builder: (_, _) => const RangeSliderScreen(),
      ),
      GoRoute(
        name: AppRoutesNamed.hero,
        path: '/hero',
        builder: (_, _) => const HeroScreen(),
        routes: [
          GoRoute(
            name: AppRoutesNamed.heroDetails,
            path: 'details/:name',
            builder: (_, GoRouterState state) {
              String name = state.pathParameters['name']!;
              return HeroDetailScreen(name: name);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (_, _) => const NotFoundScreen(),
  );
}

import 'package:flutter/material.dart';

/// A stateless widget that represents a screen with a tab bar.
///
/// The `TabBarScreen` widget uses a `DefaultTabController` to manage
/// three tabs: Home, Favorites, and Settings. Each tab displays an
/// icon and text in the `AppBar`, and the corresponding content in
/// the `TabBarView`.
///
/// The `AppBar` uses the primary color from the current theme's
/// color scheme for its background.
class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: theme.onPrimary,
          title: const Text("Tab Bar"),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.star), text: "Favorites"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Welcome Home")),
            Center(child: Text("Your Favorites")),
            Center(child: Text("Settings Page")),
          ],
        ),
      ),
    );
  }
}

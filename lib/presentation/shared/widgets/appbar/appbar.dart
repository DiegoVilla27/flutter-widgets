import 'package:flutter/material.dart';

/// A custom AppBar widget for the home screen that implements the
/// PreferredSizeWidget interface to define its preferred size.
///
/// This widget displays an AppBar with a centered title 'Home Screen'.
/// It is designed to be used as the app bar for the home screen of the
/// application.
class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  const AppBarCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: theme.onPrimary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

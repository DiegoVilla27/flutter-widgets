import 'package:flutter/material.dart';

/// A custom AppBar widget for the home screen that implements the
/// PreferredSizeWidget interface to define its preferred size.
///
/// This widget displays an AppBar with a centered title 'Home Screen'.
/// It is designed to be used as the app bar for the home screen of the
/// application.
class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Home Screen'),
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
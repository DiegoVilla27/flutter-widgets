import 'package:flutter/material.dart';

/// A stateless widget that represents a screen with a customizable app bar.
/// 
/// The `AppBarScreen` widget includes an app bar with a search icon, a
/// notifications icon with a badge, and a user avatar. The app bar's
/// background color is derived from the current theme's color scheme.
/// 
/// The body of the screen contains a centered text widget displaying "Body".
class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.onPrimary,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0, left: 12.0),
            child: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.deepPurpleAccent,
              child: Text("DV", style: TextStyle(fontSize: 12.0)),
            ),
          ),
        ],
      ),
      body: const Center(child: Text("Body")),
    );
  }
}

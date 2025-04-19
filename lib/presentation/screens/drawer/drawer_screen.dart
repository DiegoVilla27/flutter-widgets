import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that represents a screen with a drawer header.
/// 
/// The `DrawerScreen` contains a `Scaffold` with an `AppBar` and a
/// `Drawer`. The drawer includes a header with a background image and
/// gradient overlay, displaying a user's avatar, name, and title. It also
/// contains navigation options such as 'Home' and 'Settings', which close
/// the drawer when tapped. The main body of the screen prompts the user
/// to open the drawer using the menu icon.
class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Header')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/600"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black87, Colors.transparent],
                        stops: [0.1, 1.0],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: 30, child: Text("DV")),
                        SizedBox(height: 10),
                        Text(
                          'Diego Villanueva',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          'Frontend Engineer',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => context.pop(),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => context.pop(),
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Click the menu icon to open the drawer')),
    );
  }
}

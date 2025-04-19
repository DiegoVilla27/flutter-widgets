import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';

/// A stateful widget that represents a screen with a bottom navigation bar.
///
/// This widget creates a state object [_BottomNavigationBarScreenState]
/// to manage the state of the bottom navigation bar.
class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(_) {
    return Scaffold(
      appBar: const AppBarCustom(title: "Bottom Navigation Bar"),
      body: Center(child: Text("Body $_selectedIndex")),
      bottomNavigationBar: BottomNavigationBarCustom(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

/// A custom bottom navigation bar widget that extends [StatelessWidget].
///
/// This widget displays a bottom navigation bar with four fixed items:
/// Home, Search, Notifications, and Profile. It allows for a selected
/// index to be specified and a callback function to handle item taps.
///
/// The selected item's icon is highlighted with a larger size and a
/// white color, while unselected items are displayed with a white
/// color at reduced opacity. The background color is derived from the
/// current theme's primary color.
///
/// Parameters:
/// - [selectedIndex]: The index of the currently selected item.
/// - [onTap]: A callback function that is triggered when an item is tapped.
class BottomNavigationBarCustom extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTap;

  const BottomNavigationBarCustom({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      selectedIconTheme: const IconThemeData(size: 35.0),
      unselectedItemColor: Colors.white38,
      showUnselectedLabels: false,
      backgroundColor: theme.onPrimary,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: selectedIndex,
      onTap: onTap,
    );
  }
}

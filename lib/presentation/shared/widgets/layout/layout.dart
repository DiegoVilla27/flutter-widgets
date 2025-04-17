import 'package:flutter/material.dart';

/// A custom layout widget that provides a consistent structure for pages
/// with an optional app bar, a required child widget, and a required
/// floating action button. The layout uses a [Scaffold] with a [SafeArea]
/// to ensure content is displayed within the visible area of the screen.
/// 
/// The [appBar] parameter allows for an optional app bar widget to be
/// displayed at the top of the layout. The [child] parameter is a required
/// widget that represents the main content of the layout. The
/// [floatingActionButton] parameter allows for an optional widget that is displayed
/// as a floating action button, positioned at the end of the layout.
class Layout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? floatingActionButton;

  const Layout({
    super.key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
  });

  @override
  Widget build(_) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: child,
        ),
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

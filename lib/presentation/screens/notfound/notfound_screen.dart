import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays a "Page Not Found" screen.
///
/// This screen includes an app bar with a title, an image indicating
/// the page is not found, and a button to navigate back to the home
/// screen. The layout is responsive, adjusting to the available
/// screen height, and uses the app's theme for styling.
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final mediaQuery = MediaQuery.of(context);
    final appBarHeight = kToolbarHeight; // This get AppBar and Notch Height
    final availableHeight =
        mediaQuery.size.height -
        mediaQuery.padding.top -
        appBarHeight; // This get result of Screen height size and extract AppBar height and Screen padding top

    return Scaffold(
      appBar: const AppBarCustom(title: "Page Not Found"),
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: availableHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20.0,
              children: [
                const Image(
                  image: AssetImage('assets/images/notfound.png'),
                  height: 250,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(theme.onPrimary),
                  ),
                  onPressed: () => context.pop(),
                  child: const Text(
                    "¡Go to home!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

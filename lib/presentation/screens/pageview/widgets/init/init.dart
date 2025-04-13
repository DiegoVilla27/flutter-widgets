import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that creates a button positioned at the bottom center
/// of its parent widget. When pressed, it navigates back in the navigation
/// stack using the context's pop method. The button has a deep purple
/// background and displays the text "¡Let's started!" in white.
class InitBtn extends StatelessWidget {
  const InitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15.0,
      left: 0,
      right: 0,
      child: Center(
        child: TextButton(
          onPressed: () => context.pop(),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20.0),
            ),
          ),
          child: const Text(
            "¡Let's started!",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

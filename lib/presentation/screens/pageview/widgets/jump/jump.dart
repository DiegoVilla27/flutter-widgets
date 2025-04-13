import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that creates a positioned button labeled "Close".
///
/// The button is positioned at the top-right corner of its parent widget
/// and triggers a navigation pop action when pressed, using the context
/// to navigate back in the route stack. The button text is styled with
/// a deep purple color.
class JumpBtn extends StatelessWidget {
  const JumpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 5.0,
      child: TextButton(
        onPressed: () => context.pop(),
        child: const Text("Close", style: TextStyle(color: Colors.deepPurple)),
      ),
    );
  }
}

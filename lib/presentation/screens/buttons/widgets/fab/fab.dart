import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays a column containing a text label and a
/// floating action button (FAB).
///
/// The FAB, when pressed, triggers a navigation pop action to return to the
/// previous screen in the navigation stack. The button is represented by an
/// arrow back icon.
class FABBtnContainer extends StatelessWidget {
  const FABBtnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('FAB'),
        FloatingActionButton(
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back),
        ),
      ],
    );
  }
}

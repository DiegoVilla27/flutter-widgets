import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays an expanded screen layout.
///
/// The `ExpandedScreen` widget uses a custom `AppBarCustom` and a `Column`
/// containing an `Expanded` widget with a `Container`. The container
/// displays a text widget with the label "Expanded Item" and a background
/// color of `Colors.white10`.
///
/// This widget is intended to demonstrate the use of the `Expanded` widget
/// within a column layout, allowing the child widget to fill the available
/// space.
class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Row"),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white10,
              child: const Text("Expanded Item"),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a screen with a custom app bar and a
/// wrap layout containing multiple items.
///
/// The `WrapScreen` widget uses a `Layout` widget to structure its content,
/// featuring a custom app bar with the title "Wrap". The main content is a
/// `Wrap` widget that arranges a list of items with a specified spacing.
/// Each item is represented by a `Container` with a fixed size, margin,
/// background color, and a text label.
class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Wrap"),
      child: Wrap(
        spacing: 10.0,
        children: List.generate(10, (index) {
          return _item();
        }),
      ),
    );
  }

  Container _item() {
    return Container(
      width: 100.0,
      height: 40.0,
      margin: const EdgeInsets.only(bottom: 10.0),
      color: Colors.deepPurpleAccent,
      child: const Text("Wrap Item"),
    );
  }
}

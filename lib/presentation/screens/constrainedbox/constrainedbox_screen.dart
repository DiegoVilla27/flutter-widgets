import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a screen with a constrained box layout.
///
/// The `ConstrainedBoxScreen` widget uses a custom `AppBarCustom` and a
/// `Layout` widget to structure its content. It contains a `ConstrainedBox`
/// with specified minimum and maximum width and height constraints, which
/// wraps a red `Container` displaying a text label. This setup demonstrates
/// the use of constraints to control the size of a widget within a column.
class ConstrainedBoxScreen extends StatelessWidget {
  const ConstrainedBoxScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "ConstrainedBox"),
      child: Column(
        spacing: 10.0,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 200,
              maxWidth: 300,
              minHeight: 100,
              maxHeight: 150,
            ),
            child: Container(
              color: Colors.red,
              child: const Text("ConstrainedBox Item"),
            ),
          ),
        ],
      ),
    );
  }
}

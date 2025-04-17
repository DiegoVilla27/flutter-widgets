import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a screen with a custom app bar and a
/// decorated box.
///
/// The `DecoratedBoxScreen` widget uses a `Layout` widget to structure its
/// content, which includes a custom `AppBarCustom` with the title "DecoratedBox"
/// and a `Column` containing a single `DecoratedBox`. The `DecoratedBox` is styled
/// with a red background, green border, and rounded corners, and contains a
/// padded `Text` widget displaying "DecoratedBox Item".
class DecoratedBoxScreen extends StatelessWidget {
  const DecoratedBoxScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "DecoratedBox"),
      child: Column(
        spacing: 10.0,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.green, width: 4.0),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("DecoratedBox Item"),
            ),
          ),
        ],
      ),
    );
  }
}

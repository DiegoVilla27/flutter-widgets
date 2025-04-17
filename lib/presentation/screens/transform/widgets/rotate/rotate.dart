import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that displays a column containing a title and a text widget
/// rotated by a specified angle.
///
/// The `TransformRotateContainer` is a stateless widget that arranges its
/// children in a vertical column. It includes a title and a text widget
/// that is rotated by 25 degrees. This widget is useful for demonstrating
/// rotation transformations in a UI.
class TransformRotateContainer extends StatelessWidget {
  const TransformRotateContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Rotate"),
        Transform.rotate(
          angle: 25.0,
          child: const Text("Rotate Item"),
        )
      ],
    );
  }
}
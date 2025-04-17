import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that displays a column containing a title and a flip-transformed text.
/// 
/// The `TransformFlipContainer` widget consists of a title and a text widget
/// that is flipped both horizontally and vertically using the `Transform.flip`
/// method. It is structured within a `Column` with a specified spacing between
/// its children.
class TransformFlipContainer extends StatelessWidget {
  const TransformFlipContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Flip"),
        Transform.flip(
          flipX: true,
          flipY: true,
          child: const Text("Flip Item"),
        ),
      ],
    );
  }
}

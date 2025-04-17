import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that displays a column containing a title and a scaled text item.
///
/// The [TransformScaleContainer] widget uses a [Column] to arrange its children
/// vertically with a specified spacing. It includes a [TitleContainer] to display
/// a title and a [Transform.scale] widget to scale a text item by a factor of 2.5.
class TransformScaleContainer extends StatelessWidget {
  const TransformScaleContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Scale"),
        Transform.scale(
          scale: 2.5,
          child: const Text("Scale Item"),
        )
      ],
    );
  }
}
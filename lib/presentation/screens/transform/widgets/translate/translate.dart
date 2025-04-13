import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that demonstrates the use of translation transformation on a child widget.
/// 
/// This widget displays a column containing a title and a text widget. The text widget
/// is translated horizontally by 50 pixels using the `Transform.translate` widget.
/// 
/// The `TransformTranslateContainer` is a stateless widget that can be used to showcase
/// simple translation effects in a Flutter application.
class TransformTranslateContainer extends StatelessWidget {
  const TransformTranslateContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Translate"),
        Transform.translate(
          offset: const Offset(50.0, 0.0),
          child: const Text("Translate Item"),
        )
      ],
    );
  }
}
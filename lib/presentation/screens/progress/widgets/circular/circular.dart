import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a circular progress indicator
/// with a title. The widget is structured in a column layout with
/// a specified spacing between elements. The progress indicator
/// is centered and has a customizable stroke width and background color.
class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(_) {
    return const Column(
      spacing: 10,
      children: [
        TitleContainer(text: "Circular"),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black38,
            ),
          ],
        ),
      ],
    );
  }
}

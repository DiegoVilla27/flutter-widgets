import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a linear progress indicator within a column.
/// 
/// The widget includes a title and a centered linear progress indicator wrapped
/// in a `Wrap` widget. The column has a spacing of 10 between its children.
class LinearProgress extends StatelessWidget {
  const LinearProgress({super.key});

  @override
  Widget build(_) {
    return const Column(
      spacing: 10,
      children: [
        TitleContainer(text: "Linear"),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [LinearProgressIndicator()],
        ),
      ],
    );
  }
}

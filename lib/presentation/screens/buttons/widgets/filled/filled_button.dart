import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a container with a title and a set of
/// filled buttons.
///
/// The container includes a title labeled 'Filled' and two buttons:
/// - A functional button labeled 'Button'.
/// - A disabled button labeled 'Disabled Button'.
///
/// The buttons are wrapped in a `Wrap` widget for flexible alignment and
/// spacing.
class FilledBtnContainer extends StatelessWidget {
  const FilledBtnContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Filled'),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            FilledButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const FilledButton(
              onPressed: null,
              child: Text('Disabled Button'),
            ),
          ],
        ),
      ],
    );
  }
}
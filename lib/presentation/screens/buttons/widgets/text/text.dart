import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a set of
/// text buttons.
///
/// The `TextBtnContainer` widget includes a title labeled 'Text' and two
/// `TextButton` widgets arranged in a wrap layout. The first button is
/// interactive, while the second button is disabled.
class TextBtnContainer extends StatelessWidget {
  const TextBtnContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Text'),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const TextButton(
              onPressed: null,
              child: Text('Disabled Button'),
            ),
          ],
        ),
      ],
    );
  }
}

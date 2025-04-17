import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that displays a column containing a title and a set of outlined buttons.
/// 
/// The `OutlinedBtnContainer` widget includes a title labeled 'Outlined' and two
/// outlined buttons. The first button is enabled and triggers an empty callback
/// when pressed, while the second button is disabled.
class OutlinedBtnContainer extends StatelessWidget {
  const OutlinedBtnContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Outlined'),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text('Disabled Button'),
            ),
          ],
        ),
      ],
    );
  }
}

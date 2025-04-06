import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a container with a title and a set of
/// elevated buttons.
///
/// The container includes a title labeled 'Elevated' and two buttons:
/// an enabled button labeled 'Button' and a disabled button labeled
/// 'Disabled Button'. The buttons are wrapped in a `Wrap` widget to
/// center them and provide spacing.
class ElevatedBtnContainer extends StatelessWidget {
  const ElevatedBtnContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Elevated'),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled Button'),
            ),
          ],
        ),
      ],
    );
  }
}

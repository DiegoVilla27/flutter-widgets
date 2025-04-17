import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a set of
/// icon buttons.
///
/// The `IconBtnContainer` widget includes a title labeled 'Icon' and a
/// collection of `IconButton` widgets arranged in a wrap layout. The first
/// `IconButton` is interactive with an `onPressed` callback, while the second
/// is disabled. The layout is centered with a spacing of 10 units between
/// elements.
class IconBtnContainer extends StatelessWidget {
  const IconBtnContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Icon'),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.alarm),
            ),
          ],
        ),
      ],
    );
  }
}

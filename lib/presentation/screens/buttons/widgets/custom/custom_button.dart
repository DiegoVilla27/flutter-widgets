import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A custom button container widget that displays a title and a button.
/// 
/// This widget uses a column layout to arrange a title and a button.
/// The button is styled with a rounded rectangle border and responds to tap events.
/// The button's background color is derived from the current theme's color scheme.
class CustomBtnContainer extends StatelessWidget {
  const CustomBtnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Custom'),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            color: theme.onPrimary,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Custom Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

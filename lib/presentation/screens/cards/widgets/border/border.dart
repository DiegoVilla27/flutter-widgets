import 'package:flutter/material.dart';

/// A stateless widget that displays a card with a customizable border.
///
/// The `CardBorder` widget uses the current theme's color scheme to set the
/// border color and applies a rounded rectangle shape with a specified border
/// width. It contains a row with a text column and an icon button.
///
/// The text column includes a title and a description, while the icon button
/// is positioned to the right of the text.
class CardBorder extends StatelessWidget {
  const CardBorder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 4, color: theme.onPrimary),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Border",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Description Card Border"),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/tile/content/content.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that provides a container for an expandable tile, allowing
/// for dynamic content expansion and contraction within a UI.
///
/// This widget is a stateful widget that manages its own state
/// through the `_ExpansionTileContainerState` class.
class ExpansionTileContainer extends StatefulWidget {
  const ExpansionTileContainer({super.key});

  @override
  State<ExpansionTileContainer> createState() => _ExpansionTileContainerState();
}

class _ExpansionTileContainerState extends State<ExpansionTileContainer> {
  bool _expand = false;

  _toggle(bool value) => setState(() => _expand = value);

  Color get color => _expand ? Colors.black : Colors.white;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: "Tile"),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: ExpansionTile(
            title: const Text("Title"),
            subtitle: const Text("Description"),
            trailing: Icon(
              _expand ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: _expand ? theme.onPrimary : Colors.white,
            ),
            textColor: color,
            onExpansionChanged: _toggle,
            backgroundColor: Colors.white,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            expansionAnimationStyle: AnimationStyle(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            ),
            collapsedBackgroundColor: theme.onPrimary,
            children: [Content(color: color)],
          ),
        ),
      ],
    );
  }
}

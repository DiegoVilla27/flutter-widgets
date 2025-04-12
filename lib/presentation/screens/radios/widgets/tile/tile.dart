import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/radios/widgets/tile/content/content.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A container widget for displaying a radio tile with state management.
/// 
/// This widget is a stateful container that manages the state of a radio tile.
/// It uses the `_RadioTileContainerState` to handle its state changes.
class RadioTileContainer extends StatefulWidget {
  const RadioTileContainer({super.key});

  @override
  State<RadioTileContainer> createState() => _RadioTileContainerState();
}

class _RadioTileContainerState extends State<RadioTileContainer> {
  int _selected = 0;

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Tile"),
        ...?buildItems(
          selected: _selected,
          change: (value) {
            setState(() => _selected = value ?? 0);
          },
        ),
      ],
    );
  }
}

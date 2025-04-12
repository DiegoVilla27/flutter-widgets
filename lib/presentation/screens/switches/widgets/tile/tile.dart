import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

class SwitchTileContainer extends StatefulWidget {
  const SwitchTileContainer({super.key});

  @override
  State<SwitchTileContainer> createState() => _SwitchTileContainerState();
}

class _SwitchTileContainerState extends State<SwitchTileContainer> {
  bool _isActive = false;

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Tile"),
        SwitchListTile(
          title: const Text("Title"),
          subtitle: const Text("Description"),
          value: _isActive,
          onChanged: (value) => setState(() => _isActive = value),
        ),
      ],
    );
  }
}

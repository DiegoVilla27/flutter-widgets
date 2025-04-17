import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateful widget that represents a tile containing a checkbox.
/// 
/// This widget is used to create a checkbox tile that can be toggled
/// between checked and unchecked states. It manages its own state
/// using the `_CheckboxTileState` class.
class CheckboxTile extends StatefulWidget {
  const CheckboxTile({super.key});

  @override
  State<CheckboxTile> createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  bool _isChecked = false;

  _toggle(bool? value) => setState(() => _isChecked = value!);

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Tile'),
        CheckboxListTile(
          title: const Text(
            "Title",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: const Text(
            "Description",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          value: _isChecked,
          onChanged: _toggle,
        ),
      ],
    );
  }
}

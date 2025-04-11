import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A custom checkbox widget that maintains its own state.
/// 
/// This widget is a stateful version of a checkbox, allowing for
/// custom behavior and appearance. It uses a private state class
/// `_CheckboxCustomState` to manage its state.
class CheckboxCustom extends StatefulWidget {
  const CheckboxCustom({super.key});

  @override
  State<CheckboxCustom> createState() => _CheckboxCustomState();
}

class _CheckboxCustomState extends State<CheckboxCustom> {
  bool _isChecked = false;

  _toggle() => setState(() => _isChecked = !_isChecked);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Custom'),
        GestureDetector(
          onTap: _toggle,
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              border: Border.all(width: 4.0, color: theme.onPrimary),
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(_isChecked ? Icons.check : Icons.close),
          ),
        ),
      ],
    );
  }
}

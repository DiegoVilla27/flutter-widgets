import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateful widget that represents a basic checkbox component.
/// 
/// This widget is designed to be used within the organization's
/// presentation layer, leveraging internal shared title widgets
/// for consistent UI styling.
class CheckboxBasic extends StatefulWidget {
  const CheckboxBasic({super.key});

  @override
  State<CheckboxBasic> createState() => _CheckboxBasicState();
}

class _CheckboxBasicState extends State<CheckboxBasic> {
  bool _isChecked = false;

  _toggle(bool? value) => setState(() => _isChecked = value!);

  @override
  Widget build(_) {
    return Column(
      spacing: 10,
      children: [
        const TitleContainer(text: 'Basic'),
        Checkbox(value: _isChecked, onChanged: _toggle),
      ],
    );
  }
}

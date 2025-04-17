import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/radios/widgets/custom/content/content.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A custom container widget for radio buttons, extending StatefulWidget.
/// 
/// This widget is designed to manage the state of radio button components
/// and provides a customizable container for them. It uses the internal
/// _RadioCustomContainerState to handle its state management.
class RadioCustomContainer extends StatefulWidget {
  const RadioCustomContainer({super.key});

  @override
  State<RadioCustomContainer> createState() => _RadioCustomContainerState();
}

class _RadioCustomContainerState extends State<RadioCustomContainer> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Custom"),
        Column(
          spacing: 10.0,
          children: [
            ...buildItems(
              selected: _selected,
              colors: theme,
              change: (item) => setState(() => _selected = item.value),
            ),
          ],
        ),
      ],
    );
  }
}

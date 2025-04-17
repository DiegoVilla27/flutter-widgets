import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateful widget that serves as a container for basic radio button functionality.
/// 
/// This widget is designed to manage the state of radio buttons and provide
/// a basic structure for implementing radio button features in the UI.
class RadioBasicContainer extends StatefulWidget {
  const RadioBasicContainer({super.key});

  @override
  State<RadioBasicContainer> createState() => _RadioBasicContainerState();
}

class _RadioBasicContainerState extends State<RadioBasicContainer> {
  int _selected = 0;

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Basic"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              toggleable: true,
              value: 1,
              groupValue: _selected,
              onChanged:
                  (value) => setState(() {
                    _selected = value ?? 0;
                  }),
            ),
            const Text("Select"),
          ],
        ),
      ],
    );
  }
}

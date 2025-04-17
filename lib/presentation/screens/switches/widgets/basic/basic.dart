import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateful widget that serves as a container for a basic switch component.
/// 
/// This widget is designed to manage the state of a switch, providing a
/// foundation for building more complex switch-based UI elements.
class SwitchBasicContainer extends StatefulWidget {
  const SwitchBasicContainer({super.key});

  @override
  State<SwitchBasicContainer> createState() => _SwitchBasicContainerState();
}

class _SwitchBasicContainerState extends State<SwitchBasicContainer> {
  bool _isDeveloper = false;

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Basic"),
        Row(
          spacing: 10.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _isDeveloper,
              thumbIcon: WidgetStateProperty.all(
                Icon(_isDeveloper ? Icons.check : Icons.close),
              ),
              onChanged: (value) => setState(() => _isDeveloper = value),
            ),
            const Text("¿Are u developer?"),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/switches/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Switches screen.
///
/// This screen includes a custom app bar and a column layout containing
/// various switch-related widgets, separated by dividers. The layout
/// uses a custom `Layout` widget and a `AppBarCustom` for the app bar.
///
/// Widgets included:
/// - `SwitchBasicContainer`: Displays basic switch functionality.
/// - `SwitchTileContainer`: Displays switch tiles.
/// - `SwitchCustomContainer`: Displays custom switch designs.
class SwitchesScreen extends StatelessWidget {
  const SwitchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBarCustom(title: "Switches"),
      child: Column(
        spacing: 10.0,
        children: [
          SwitchBasicContainer(),
          Divider(),
          SwitchTileContainer(),
          Divider(),
          SwitchCustomContainer(),
        ],
      ),
    );
  }
}

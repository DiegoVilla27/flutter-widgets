import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/checkbox/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with various checkbox examples.
///
/// The `CheckboxScreen` widget is composed of a custom app bar and a column
/// containing different checkbox widgets, separated by dividers. It includes
/// basic, tile, and custom checkbox examples to demonstrate different styles
/// and functionalities of checkboxes within the application.
class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Checkbox"),
      child: Column(
        spacing: 10,
        children: [
          CheckboxBasic(),
          Divider(),
          CheckboxTile(),
          Divider(),
          CheckboxCustom(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with a customizable layout.
/// 
/// The `ContainerScreen` widget uses the `Layout` widget to provide a
/// consistent structure, including a custom app bar and a container.
/// The container is styled with a red background, padding, and margin,
/// and it contains a text widget displaying "Container Item".
/// 
/// The app bar displays the title "Align".
class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Align"),
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: double.infinity,
        child: const Text("Container Item"),
      ),
    );
  }
}

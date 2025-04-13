import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Align screen.
///
/// This widget uses a custom `AppBarCustom` with the title "Align" and
/// displays a centered text "Align Item" at the bottom of the screen.
/// The text is styled with a font size of 20.0 and bold weight.
/// It is wrapped within a `Layout` widget for consistent layout structure.
class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Align"),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          "Align Item",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

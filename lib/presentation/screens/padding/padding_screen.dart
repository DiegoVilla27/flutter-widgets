import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with padding.
/// 
/// This widget uses a custom `AppBarCustom` with the title "Padding" and
/// displays a `Text` widget with the content "Padding Item". The text is
/// styled with a font size of 20.0 and bold weight. The entire content is
/// wrapped in a `Padding` widget with 50.0 logical pixels of padding on all
/// sides, and is contained within a `Layout` widget.
class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Padding"),
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(
          "Padding Item",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

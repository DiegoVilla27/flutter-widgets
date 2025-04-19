import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with a tooltip demonstration.
/// 
/// The `TooltipScreen` widget uses a custom `AppBarCustom` and a `Layout`
/// widget to structure the screen. It displays a centered column containing
/// a text and an icon wrapped in a `Tooltip`. The tooltip appears when the
/// icon is long-pressed, showing the message "Save changes" with a custom
/// decoration and text style. The tooltip is configured to appear quickly
/// and remain visible for a short duration.
class TooltipScreen extends StatelessWidget {
  const TooltipScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Tooltip"),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20.0,
          children: [
            const Text("Long press icon to show tooltip"),
            Tooltip(
              message: 'Save changes',
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: const TextStyle(color: Colors.white),
              waitDuration: const Duration(milliseconds: 100),
              showDuration: const Duration(seconds: 2),
              preferBelow: false,
              child: const Icon(Icons.save, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}

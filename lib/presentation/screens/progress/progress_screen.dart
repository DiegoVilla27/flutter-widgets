import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/progress/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a progress screen with various progress indicators.
/// 
/// The screen includes a custom app bar with the title "Progress" and a scrollable
/// column layout. It features different types of progress indicators such as
/// circular, linear, and controller-based, each separated by a divider.
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Progress"),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            CircularProgress(),
            Divider(),
            LinearProgress(),
            Divider(),
            ControllerProgress(),
            Divider()
          ],
        ),
      ),
    );
  }
}

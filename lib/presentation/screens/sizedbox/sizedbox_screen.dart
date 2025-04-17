import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with a custom app bar and a
/// column containing a single `SizedBox` with a text child.
/// 
/// This widget uses the organization's custom `Layout` and `AppBarCustom`
/// widgets to maintain consistency with the app's design patterns.
class SizedBoxScreen extends StatelessWidget {
  const SizedBoxScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "SizedBox"),
      child: Column(
        spacing: 10.0,
        children: [SizedBox(child: Text("SizedBox Item"))],
      ),
    );
  }
}

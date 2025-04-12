import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Expansion screen.
///
/// This screen utilizes a custom layout with a custom app bar and contains
/// multiple expandable components such as `ExpansionTileContainer`,
/// and `ExpansionPanelContainer`. These components
/// are organized within a scrollable column, separated by dividers.
class ExpansionScreen extends StatelessWidget {
  const ExpansionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBarCustom(title: "Expansion"),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.0,
          children: [
            ExpansionTileContainer(),
            Divider(),
            ExpansionPanelContainer(),
          ],
        ),
      ),
    );
  }
}

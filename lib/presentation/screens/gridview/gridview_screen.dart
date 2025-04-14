import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/gridview/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen displaying various grid view
/// examples within a scrollable column layout.
///
/// The screen includes a custom app bar and three different grid view
/// containers, each separated by a divider. The grid view containers
/// demonstrate different grid view implementations: count, extent, and builder.
class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Grid View"),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.0,
          children: [
            GridViewCountContainer(),
            Divider(),
            GridViewExtentContainer(),
            Divider(),
            GridViewBuilderContainer(),
          ],
        ),
      ),
    );
  }
}

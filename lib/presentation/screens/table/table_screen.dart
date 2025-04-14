import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/table/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen displaying tables.
/// 
/// This widget uses a custom layout with an app bar titled "Tables".
/// It contains a scrollable column with a specified spacing between
/// its children, which include a `TableContainer`, a `Divider`, and
/// a `TableDataContainer`.
class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBarCustom(title: "Tables"),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.0,
          children: [
            TableContainer(),
            Divider(),
            TableDataContainer()
          ],
        ),
      ),
    );
  }
}
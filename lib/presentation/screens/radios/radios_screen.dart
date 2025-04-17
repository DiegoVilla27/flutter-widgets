import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/radios/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Radios screen.
///
/// This screen utilizes a custom layout with an app bar titled "Radios".
/// It contains a column with various radio-related widgets separated by dividers:
/// - `RadioBasicContainer`
/// - `RadioTileContainer`
/// - `RadioCustomContainer
class RadiosScreen extends StatelessWidget {
  const RadiosScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Radios"),
      child: Column(
        spacing: 10.0,
        children: [
          RadioBasicContainer(),
          Divider(),
          RadioTileContainer(),
          Divider(),
          RadioCustomContainer(),
        ],
      ),
    );
  }
}

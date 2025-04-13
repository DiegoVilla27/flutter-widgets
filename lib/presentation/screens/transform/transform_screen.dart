import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/transform/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Transform screen.
///
/// This screen utilizes a custom layout with a custom app bar titled "Transform".
/// It displays a series of transformation widgets, each separated by a divider:
/// - TransformFlipContainer
/// - TransformScaleContainer
/// - TransformRotateContainer
/// - TransformTranslateContainer
///
/// The screen is designed to demonstrate various transformation effects.
class TransformScreen extends StatelessWidget {
  const TransformScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Transform"),
      child: Column(
        spacing: 10.0,
        children: [
          TransformFlipContainer(),
          Divider(),
          TransformScaleContainer(),
          Divider(),
          TransformRotateContainer(),
          Divider(),
          TransformTranslateContainer(),
        ],
      ),
    );
  }
}

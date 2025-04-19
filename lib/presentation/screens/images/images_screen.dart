import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/images/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays an image screen with a custom app bar.
/// 
/// The screen includes a scrollable column layout containing various image
/// containers, such as asset, network, and SVG images, separated by dividers.
/// Utilizes organization-specific layout and app bar widgets.
class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Images"),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.0,
          children: [
            ImageAssetContainer(),
            Divider(),
            ImageNetworkContainer(),
            Divider(),
            ImageSvgContainer(),
          ],
        ),
      ),
    );
  }
}

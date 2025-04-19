import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that displays an image asset within a column layout.
///
/// The [ImageAssetContainer] widget is a stateless widget that arranges
/// a title and an image asset vertically. It uses a [Column] to layout
/// its children with a specified spacing between them. The title is
/// displayed using a [TitleContainer] widget, and the image is loaded
/// from the specified asset path with a fixed height.
class ImageAssetContainer extends StatelessWidget {
  const ImageAssetContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Asset"),
        Image.asset("assets/images/heroes/batman.png", height: 150),
      ],
    );
  }
}

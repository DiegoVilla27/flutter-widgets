import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a network image.
///
/// The `ImageNetworkContainer` widget is composed of a `TitleContainer`
/// with the text "Network" and an `Image.network` widget that loads an image
/// from a specified URL. The column has a spacing of 10.0 between its children.
class ImageNetworkContainer extends StatelessWidget {
  const ImageNetworkContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Network"),
        Image.network("https://picsum.photos/200", height: 150),
      ],
    );
  }
}
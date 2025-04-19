import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays an SVG image within a column layout.
/// 
/// The widget includes a title and an SVG image loaded from the assets.
/// The image is displayed with a fixed height and width of 150 pixels.
/// 
/// This widget is intended for use in Flutter applications where SVG
/// images need to be displayed alongside a title.
class ImageSvgContainer extends StatelessWidget {
  const ImageSvgContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "SVG"),
        SvgPicture.asset("assets/images/dark.svg", height: 150, width: 150),
      ],
    );
  }
}

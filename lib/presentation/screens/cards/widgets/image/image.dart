import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/cards/widgets/image/widgets/gradient/gradient.dart';
import 'package:flutter_widgets/presentation/screens/cards/widgets/image/widgets/info/info.dart';

/// A widget that displays an image card with a gradient overlay and additional
/// information.
///
/// The [CardImage] widget is a [StatelessWidget] that constructs a card with
/// a network image, a gradient overlay, and an information widget. The card
/// has rounded corners and a slight elevation to give a raised appearance.
/// The image is fetched from a network source and is displayed with a fixed
/// height and a cover fit to fill the card's width.
class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(_) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/1/800/450',
            height: 200,
            fit: BoxFit.cover,
          ),
          const CardImageGradient(),
          const CardImageInfo(),
        ],
      ),
    );
  }
}

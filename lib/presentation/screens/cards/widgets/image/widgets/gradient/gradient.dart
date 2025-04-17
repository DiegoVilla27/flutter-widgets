import 'package:flutter/material.dart';

/// A widget that overlays a vertical gradient on a card image.
/// 
/// This widget uses a `Positioned.fill` to cover its parent with a
/// `DecoratedBox` that applies a `LinearGradient`. The gradient transitions
/// from transparent at the top to black at the bottom, creating a fade effect.
class CardImageGradient extends StatelessWidget {
  const CardImageGradient({super.key});

  @override
  Widget build(_) {
    return const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black],
          ),
        ),
      ),
    );
  }
}

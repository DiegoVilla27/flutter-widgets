import 'package:flutter/material.dart';

/// A widget that displays information about a card image, including a title
/// and description. Positioned at the bottom left of its parent widget.
class CardImageInfo extends StatelessWidget {
  const CardImageInfo({super.key});

  @override
  Widget build(_) {
    return const Positioned(
      bottom: 10,
      left: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Card Image",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("Description Card Image"),
        ],
      ),
    );
  }
}

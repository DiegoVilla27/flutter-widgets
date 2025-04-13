import 'package:flutter/material.dart';

/// A stateless widget that displays an item with an image, title, and caption.
/// 
/// The [ItemPageView] widget is designed to present a visual item with a
/// specified [title], [caption], and [url] for the image asset. It arranges
/// these elements in a column with centered alignment and applies consistent
/// styling to the text elements.
/// 
/// The [title] is displayed in bold with a larger font size, while the
/// [caption] is shown with a lighter font weight. The image is loaded from
/// the provided [url] and displayed at a fixed height.
class ItemPageView extends StatelessWidget {
  final String title;
  final String caption;
  final String url;

  const ItemPageView({
    super.key,
    required this.title,
    required this.caption,
    required this.url,
  });

  @override
  Widget build(_) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 10.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(url), height: 300,),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            caption,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

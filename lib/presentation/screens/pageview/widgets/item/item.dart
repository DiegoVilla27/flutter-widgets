import 'package:flutter/material.dart';

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

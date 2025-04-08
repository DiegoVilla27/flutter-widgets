import 'package:flutter/material.dart';

/// A widget that displays a bold title text with a fixed font size.
/// 
/// The [TitleContainer] widget takes a required [text] parameter, which
/// is displayed as a bold title using a [Text] widget with a font size
/// of 16 and bold weight. This widget is stateless and can be used
/// wherever a title is needed in the UI.
class TitleContainer extends StatelessWidget {
  final String text;

  const TitleContainer({super.key, required this.text});

  @override
  Widget build(_) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}

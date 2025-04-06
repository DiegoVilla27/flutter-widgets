import 'package:flutter/material.dart';

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

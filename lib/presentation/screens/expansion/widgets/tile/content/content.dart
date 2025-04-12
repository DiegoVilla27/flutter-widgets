import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/tile/data/data.dart';

/// A stateless widget that displays a scrollable list of phrases.
/// 
/// The `Content` widget takes a required `color` parameter, which is used
/// to set the text color of each phrase. It builds a column of text widgets
/// for each phrase, separated by dividers, and adds padding around each
/// phrase. The widget is wrapped in a `SingleChildScrollView` to allow
/// vertical scrolling when the content exceeds the available height.
class Content extends StatelessWidget {
  final Color color;

  const Content({super.key, required this.color});

  @override
  Widget build(_) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(phrases.length, (index) {
            final phrase = phrases[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Text(phrase, style: TextStyle(color: color)),
                  if ((phrases.length - 1) != index)
                    const Divider(color: Colors.black26),
                  if ((phrases.length - 1) == index)
                    const SizedBox(height: 10.0),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

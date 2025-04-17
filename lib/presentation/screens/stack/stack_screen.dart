import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a screen with a custom app bar and a stack
/// of widgets, including a network image, a gradient overlay, and a text label.
/// 
/// The `StackScreen` widget uses a `Layout` widget to provide a consistent
/// structure with a custom app bar. The main content is a `Stack` widget that
/// layers a network image, a gradient overlay for visual effect, and a
/// positioned text label at the bottom left corner.
class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Stack"),
      child: Stack(
        children: [
          Image.network(
            "https://picsum.photos/600/300",
            height: 200.0,
            width: double.infinity,
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 5.0,
            left: 5.0,
            child: Text("Nulla consequat aliqua do cupidatat cupidatat."),
          ),
        ],
      ),
    );
  }
}

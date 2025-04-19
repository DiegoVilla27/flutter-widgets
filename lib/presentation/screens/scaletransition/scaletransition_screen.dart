import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen with a scale transition effect.
///
/// This widget is part of the presentation layer and utilizes internal
/// organization-specific components for app bar and layout management.
class ScaleTransitionScreen extends StatefulWidget {
  const ScaleTransitionScreen({super.key});

  @override
  State<ScaleTransitionScreen> createState() => _ScaleTransitionScreenState();
}

class _ScaleTransitionScreenState extends State<ScaleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  /// Initializes the state of the widget by setting up an animation controller
  /// and a curved animation. The animation controller is configured with a
  /// duration of 800 milliseconds and starts animating forward immediately.
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutBack,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Scale Transition"),
      child: Column(
        children: [
          ScaleTransition(
            scale: _animation,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.deepPurpleAccent,
              child: const Text(
                "Hello World 👋",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

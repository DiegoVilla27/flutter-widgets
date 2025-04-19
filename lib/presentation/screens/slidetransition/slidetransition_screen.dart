import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen with a slide transition effect.
/// 
/// This widget is used to create a screen that transitions with a sliding
/// animation. It extends [StatefulWidget] and overrides the [createState]
/// method to return an instance of [_SlideTransitionScreenState].git 
class SlideTransitionScreen extends StatefulWidget {
  const SlideTransitionScreen({super.key});

  @override
  State<SlideTransitionScreen> createState() => _SlideTransitionScreenState();
}

class _SlideTransitionScreenState extends State<SlideTransitionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;

  /// Initializes the state of the widget by setting up an animation controller
  /// and a tween animation. The animation moves an object from off-screen to
  /// its final position using an ease-in-out curve.
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

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
      appBar: const AppBarCustom(title: "Slide Transition"),
      child: Column(
        children: [
          SlideTransition(
            position: _animation,
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

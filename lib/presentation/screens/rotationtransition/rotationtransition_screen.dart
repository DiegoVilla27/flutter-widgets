import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A screen widget that provides a rotation transition effect.
/// 
/// This widget is a stateful widget that creates a new instance of
/// `_RotationTransitionScreenState` to manage its state. It is used
/// to display a screen with a rotation transition animation.
class RotationTransitionScreen extends StatefulWidget {
  const RotationTransitionScreen({super.key});

  @override
  State<RotationTransitionScreen> createState() =>
      _RotationTransitionScreenState();
}

class _RotationTransitionScreenState extends State<RotationTransitionScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  /// Initializes the state of the widget.
  ///
  /// Sets up an `AnimationController` with a duration of 2 seconds and a
  /// `Tween` animation that transitions from 0.0 to 1.0 using an ease-in-out
  /// curve. The animation controller is set to repeat indefinitely.
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Rotation Transition"),
      child: Column(
        children: [
          RotationTransition(
            turns: _animation,
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurpleAccent,
              ),
              child: const Icon(Icons.refresh, size: 48, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

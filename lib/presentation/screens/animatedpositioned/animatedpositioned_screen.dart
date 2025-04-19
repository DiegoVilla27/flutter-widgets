import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A screen widget that demonstrates the use of an animated positioned widget.
/// 
/// This widget is a stateful widget that creates an instance of 
/// `_AnimatedPositionedScreenState`, which manages the state and behavior 
/// of the animated positioned elements within the screen.
class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _moved = false;

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Animated Position"),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            top: _moved ? 300 : 100,
            left: _moved ? 250 : 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.deepPurpleAccent,
              alignment: Alignment.center,
              child: const Text('Move', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _moved = !_moved;
                });
              },
              child: const Text('Animate Position'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A screen widget that demonstrates the use of animated opacity transitions.
/// 
/// This widget is a stateful widget that creates an instance of 
/// `_AnimatedOpacityScreenState` to manage its state.
class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool _isVisible = true;

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Animated Opacity"),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
              ),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _isVisible = !_isVisible),
              child: Text(_isVisible ? 'Hide' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}

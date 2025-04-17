import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A screen widget that displays an animated container.
///
/// This widget is a stateful widget that creates an instance of
/// `_AnimatedContainerScreenState` to manage its state.
class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool _isSelected = false;

  _toggle() => setState(() => _isSelected = !_isSelected);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).colorScheme;

    return Layout(
      appBar: const AppBarCustom(title: "Animated Container"),
      child: GestureDetector(
        onTap: _toggle,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: _isSelected ? 200.0 : size.width,
              height: _isSelected ? 200.0 : size.height,
              color: _isSelected ? Colors.black54 : theme.onPrimary,
              curve: Curves.easeInOut,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10.0,
                  children: [
                    Expanded(child: FlutterLogo(size: double.infinity)),
                    Text(
                      "Touch me!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

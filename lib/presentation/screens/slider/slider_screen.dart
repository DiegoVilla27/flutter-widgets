import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen with a slider component.
/// 
/// This widget is part of the presentation layer and utilizes internal
/// organization-specific app bar and layout widgets. It creates a state
/// object `_SliderScreenState` to manage its state.
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _valueSlider = 0;

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Slider"),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.deepPurpleAccent,
          thumbColor: Colors.deepPurpleAccent,
          valueIndicatorColor: Colors.deepPurpleAccent,
          valueIndicatorTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Slider(
          value: _valueSlider,
          max: 100,
          divisions: 100,
          label: "Value: ${_valueSlider.floor()}",
          onChanged: (value) => setState(() => _valueSlider = value),
        ),
      ),
    );
  }
}

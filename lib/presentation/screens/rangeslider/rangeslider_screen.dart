import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A screen widget that displays a range slider.
/// 
/// This widget is a stateful widget that creates an instance of
/// `_RangeSliderScreenState` to manage its state. It is designed to
/// be used within the application's UI to allow users to select a
/// range of values using a slider.
class RangeSliderScreen extends StatefulWidget {
  const RangeSliderScreen({super.key});

  @override
  State<RangeSliderScreen> createState() => _RangeSliderScreenState();
}

class _RangeSliderScreenState extends State<RangeSliderScreen> {
  RangeValues _currentRange = const RangeValues(20, 80);

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Range Slider"),
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
        child: RangeSlider(
          values: _currentRange,
          max: 100,
          divisions: 100,
          labels: RangeLabels(
            "Value: ${_currentRange.start.floor()}",
            "Value: ${_currentRange.end.floor()}",
          ),
          onChanged: (values) => setState(() => _currentRange = values),
        ),
      ),
    );
  }
}

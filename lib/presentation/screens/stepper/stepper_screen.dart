import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen with a stepper component.
///
/// This widget is designed to manage and display a series of steps, allowing
/// users to navigate through them. It utilizes the `_StepperScreenState` to
/// maintain its state and handle user interactions.
class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;

  /// A constant list of `Step` objects representing the steps in a stepper.
  ///
  /// Each `Step` includes a title and content, both as `Text` widgets, and is
  /// marked as active. This list is used to define the sequence and details
  /// of steps in a stepper component.
  List<Step> steps = const [
    Step(
      title: Text('Step 1'),
      content: Text('This is step 1'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('This is step 2'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is step 3'),
      isActive: true,
    ),
  ];

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Stepper"),
      child: Stepper(
        connectorThickness: 1,
        connectorColor: WidgetStateProperty.all(Colors.deepPurpleAccent),
        currentStep: _currentStep,
        onStepTapped: (int step) {
          setState(() => _currentStep = step);
        },
        onStepContinue: () {
          if (_currentStep < steps.length - 1) {
            setState(() => _currentStep++);
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() => _currentStep--);
          }
        },
        steps: steps,
        controlsBuilder: (_, details) {
          return Row(
            spacing: 10.0,
            children: [
              if (details.currentStep != 0)
                Expanded(
                  child: ElevatedButton(
                    onPressed: details.onStepCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Go Back'),
                  ),
                ),
              Expanded(
                child: ElevatedButton(
                  onPressed: details.onStepContinue,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    details.currentStep == steps.length - 1
                        ? 'Save'
                        : 'Next Step',
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

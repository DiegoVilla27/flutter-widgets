import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A widget that represents the progress controller in the application.
///
/// This widget is responsible for managing the state and behavior of the
/// progress-related UI components. It extends [StatefulWidget] to allow
/// dynamic updates and interactions.
class ControllerProgress extends StatefulWidget {
  const ControllerProgress({super.key});

  @override
  State<ControllerProgress> createState() => _ControllerProgressState();
}

class _ControllerProgressState extends State<ControllerProgress> {
  late final StreamController<double> _controller = StreamController<double>();
  Timer? _timer;
  double _progress = 0.0;
  bool _isPlaying = false;

  /// Starts a periodic timer to increment progress.
  ///
  /// The timer updates the progress value every 100 milliseconds by 0.02.
  /// Once the progress reaches or exceeds 1.0, it is capped at 1.0 and the
  /// timer is paused. The current progress is emitted on each update.
  void _start() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      _progress += 0.02;
      if (_progress >= 1.0) {
        _progress = 1.0;
        _pause();
      }
      _emitProgress(_progress);
    });
    _setPlaying(true);
  }

  /// Pauses the current timer and updates the playing state.
  ///
  /// Cancels the active timer, if any, and sets the playing state to false
  /// to indicate that the progress is paused.
  void _pause() {
    _timer?.cancel();
    _setPlaying(false);
  }

  /// Toggles the progress state between playing and paused.
  ///
  /// If the progress is complete (i.e., `_progress` is 1.0), it resets the progress.
  /// Otherwise, it switches between starting and pausing the progress based on
  /// the current state of `_isPlaying`.
  void _toggle() {
    if (_progress == 1.0) _reset();
    _isPlaying ? _pause() : _start();
  }

  /// Updates the playing state of the widget.
  ///
  /// This method sets the `_isPlaying` flag to the provided [flag] value
  /// and triggers a UI update by calling `setState`.
  void _setPlaying(bool flag) {
    setState(() => _isPlaying = flag);
  }

  /// Resets the progress to its initial state.
  ///
  /// This method sets the progress value to zero, emits the updated progress,
  /// cancels any active timer, and updates the playing state to false.
  void _reset() {
    _progress = 0.0;
    _emitProgress(_progress);
    _timer?.cancel();
    _setPlaying(false);
  }

  /// Emits a progress value to the controller.
  ///
  /// If [value] is provided, it is emitted; otherwise, the current progress
  /// value is emitted.
  void _emitProgress([double? value]) {
    _controller.add(value ?? _progress);
  }

  /// Returns the appropriate icon based on the current playing state.
  ///
  /// If `_isPlaying` is true, it returns the pause icon; otherwise, it returns
  /// the play icon.
  IconData get _icon {
    return _isPlaying ? Icons.pause : Icons.play_arrow;
  }

  /// Disposes of the resources used by the controller.
  ///
  /// Cancels the active timer and closes the controller stream
  /// to prevent memory leaks. Calls the superclass's dispose method
  /// to ensure proper cleanup.
  @override
  void dispose() {
    _timer?.cancel();
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return StreamBuilder<double>(
      stream: _controller.stream,
      initialData: _progress,
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0.0;

        return Column(
          spacing: 10,
          children: [
            const TitleContainer(text: "Controller"),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 5,
                  backgroundColor: Colors.black26,
                ),
                IconButton(
                  onPressed: _toggle,
                  icon: Icon(_icon),
                  style: IconButton.styleFrom(backgroundColor: theme.onPrimary),
                ),
                IconButton(
                  onPressed: _reset,
                  icon: const Icon(Icons.refresh),
                  style: IconButton.styleFrom(backgroundColor: theme.onPrimary),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

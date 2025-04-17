import 'package:flutter/material.dart';

/// A custom switch widget that allows toggling between active and inactive states.
///
/// The `SwitchItemCustom` widget provides a customizable switch with different
/// colors for active and inactive states. It takes several parameters to define
/// the appearance of the switch, including background, border, and circle colors
/// for both active and inactive states. The `change` callback is triggered when
/// the switch state changes.
///
/// Parameters:
/// - `isActive`: A boolean indicating the initial state of the switch.
/// - `colorBackgroundActive`: The background color when the switch is active.
/// - `colorBorderActive`: The border color when the switch is active.
/// - `colorCircleActive`: The circle color when the switch is active.
/// - `colorBackgroundUnActive`: The background color when the switch is inactive.
/// - `colorBorderUnActive`: The border color when the switch is inactive.
/// - `colorCircleUnActive`: The circle color when the switch is inactive.
/// - `change`: A callback function that is called with the new state when the switch is toggled.
class SwitchItemCustom extends StatefulWidget {
  final bool isActive;
  final Color colorBackgroundActive;
  final Color colorBorderActive;
  final Color colorCircleActive;
  final Color colorBackgroundUnActive;
  final Color colorBorderUnActive;
  final Color colorCircleUnActive;
  final Function(bool) change;

  const SwitchItemCustom({
    super.key,
    required this.isActive,
    required this.colorBackgroundActive,
    required this.colorBorderActive,
    required this.colorCircleActive,
    required this.colorBackgroundUnActive,
    required this.colorBorderUnActive,
    required this.colorCircleUnActive,
    required this.change,
  });

  @override
  State<SwitchItemCustom> createState() => _SwitchItemCustomState();
}

class _SwitchItemCustomState extends State<SwitchItemCustom>
    with TickerProviderStateMixin {
  late bool _isActive;
  late AnimationController _controller;
  late Animation<Alignment> _animation;

  @override
  void initState() {
    super.initState();
    _initActive();
    _initController();
    _initAnimation();
    _controller.value = _isActive ? 1.0 : 0.0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _initActive() {
    setState(() => _isActive = widget.isActive);
  }

  void _initController() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
  }

  void _initAnimation() {
    _animation = AlignmentTween(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  void _toggleSwitch() {
    setState(() {
      _isActive = !_isActive;
      _isActive ? _controller.forward() : _controller.reverse();
      widget.change(_isActive);
    });
  }

  @override
  Widget build(_) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: Container(
        width: 60.0,
        height: 35.0,
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color:
              _isActive
                  ? widget.colorBackgroundActive
                  : widget.colorBackgroundUnActive,
          border: Border.all(
            width: 2.0,
            color:
                _isActive
                    ? widget.colorBackgroundActive
                    : widget.colorBackgroundUnActive,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Align(
                  alignment: _animation.value,
                  child: Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color:
                          _isActive
                              ? widget.colorCircleActive
                              : widget.colorCircleUnActive,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

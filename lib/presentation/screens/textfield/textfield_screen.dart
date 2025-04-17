import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen containing a text field.
/// 
/// This widget is part of the presentation layer and utilizes internal
/// organization-specific app bar and layout widgets for consistent UI
/// design across the application.
class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _controller = TextEditingController();
  final Color _baseColor = Colors.deepPurpleAccent;
  final Color _successColor = Colors.green;
  final Color _errorColor = Colors.red;
  Color _currentColor = Colors.deepPurpleAccent;
  bool _hasError = false;

  void _validate(String value) {
    setState(() => _hasError = value.trim().length < 5);
  }

  OutlineInputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: 2),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    if (_controller.text.isEmpty) {
      _currentColor = _baseColor;
    } else {
      _currentColor = _hasError ? _errorColor : _successColor;
    }

    return Layout(
      appBar: const AppBarCustom(title: "TextField"),
      child: Column(
        spacing: 10.0,
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              label: const Text("Input", style: TextStyle(color: Colors.white)),
              border: _getBorder(_baseColor),
              enabledBorder: _getBorder(_baseColor),
              focusedBorder: _getBorder(_currentColor),
            ),
            onChanged: _validate,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// A custom text field widget that extends [StatelessWidget].
///
/// This widget provides a customizable [TextFormField] with specific styling
/// and validation capabilities. It includes options for setting the label,
/// hint text, keyboard type, and obscuring text input. The border and text
/// styles are predefined but can be adjusted by modifying the internal methods.
///
/// Parameters:
/// - [name]: The label and hint text for the text field.
/// - [controller]: A [TextEditingController] to manage the text field's value.
/// - [validations]: A function to validate the input text.
/// - [keyboardType]: The type of keyboard to use for text input, defaults to [TextInputType.name].
/// - [obscureText]: Whether to obscure the text input, defaults to false.
class TextFieldCustom extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final Function(String) validations;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const TextFieldCustom({
    super.key,
    required this.name,
    required this.controller,
    required this.validations,
    this.keyboardType = TextInputType.name,
    this.obscureText = false,
  });

  /// Returns an [InputBorder] with a specified [color].
  ///
  /// The border is an [OutlineInputBorder] with a circular radius of 8.0
  /// and a border width of 2.0.
  InputBorder _getBorderStyle(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: color, width: 2.0),
  );

  /// Returns a [TextStyle] with a font size of 15.0 and a font weight of 300.
  TextStyle _getTextStyle() =>
      const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: name,
        labelStyle: _getTextStyle(),
        hintText: name,
        hintStyle: _getTextStyle(),
        border: _getBorderStyle(Colors.deepPurpleAccent),
        focusedBorder: _getBorderStyle(Colors.deepPurpleAccent),
        errorBorder: _getBorderStyle(Colors.redAccent),
        errorStyle: const TextStyle(color: Colors.redAccent),
        focusedErrorBorder: _getBorderStyle(Colors.redAccent),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText!,
      validator: (value) => validations(value!),
    );
  }
}

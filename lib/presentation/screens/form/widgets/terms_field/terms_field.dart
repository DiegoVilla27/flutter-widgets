import 'package:flutter/material.dart';

/// A custom form field widget that displays a checkbox for accepting terms
/// and conditions. It validates whether the terms are accepted and displays
/// an error message if not.
///
/// The [TermsField] widget takes two required parameters:
/// - [isTermsAccepted]: A boolean indicating whether the terms are accepted.
/// - [onChanged]: A callback function that is triggered when the checkbox
///   value changes.
///
/// The widget uses a [FormField] to manage its state and validation, and
/// displays a [CheckboxListTile] with a title and an optional error message
/// if the terms are not accepted.
class TermsField extends StatelessWidget {
  final bool isTermsAccepted;
  final Function(bool?) onChanged;

  const TermsField({
    super.key,
    required this.isTermsAccepted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      initialValue: isTermsAccepted,
      validator:
          (value) => value! ? null : 'You must accept the terms and conditions',
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              activeColor: Colors.deepPurpleAccent,
              checkColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              value: isTermsAccepted,
              onChanged: (value) {
                state.didChange(value);
                onChanged(value);
              },
              title: const Text('I accept the terms and conditions'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  state.errorText!,
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 12.0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

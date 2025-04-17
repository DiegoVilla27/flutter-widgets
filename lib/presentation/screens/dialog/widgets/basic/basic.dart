import 'package:flutter/material.dart';

/// Displays a custom dialog with a title and description.
/// 
/// The dialog can optionally include a custom widget [child].
/// If no [child] is provided, a default layout with the [title]
/// and [description] is shown.
/// 
/// The dialog has a rounded rectangle shape with a border radius
/// of 10.0.
void showCustomDialog({
  required BuildContext context,
  required String title,
  required String description, 
  Widget? child
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child:
            child ??
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  child ??
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(description),
                    ],
                  ),
            ),
      );
    },
  );
}

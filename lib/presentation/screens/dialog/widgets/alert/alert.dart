import 'package:flutter/material.dart';

/// Displays a custom alert dialog with a title, content, and confirm/cancel actions.
/// 
/// The dialog is presented using the provided [context]. The [title] is displayed
/// at the top of the dialog, and the [content] widget is shown below the title.
/// Two buttons are provided for user interaction: "Cancel" and "Confirm", which
/// trigger the [cancel] and [confirm] callbacks, respectively. The dialog's
/// appearance is customized with rounded corners and padding.
void showCustomAlertDialog({
  required BuildContext context,
  required String title,
  required Widget content,
  required VoidCallback confirm,
  required VoidCallback cancel,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.all(15.0),
        title: Text(
          textAlign: TextAlign.center,
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        content: content,
        actionsPadding: const EdgeInsets.only(bottom: 15.0, right: 15.0),
        actions: [
          ElevatedButton(
            style: ButtonStyle(elevation: WidgetStateProperty.all(2.0)),
            onPressed: cancel,
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: confirm,
            style: ButtonStyle(
              elevation: WidgetStateProperty.all(2.0),
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.onPrimary,
              ),
              foregroundColor: WidgetStateProperty.all(Colors.white),
            ),
            child: const Text("Confirm"),
          ),
        ],
      );
    },
  );
}

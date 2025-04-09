import 'package:flutter/material.dart';

/// Displays a custom about dialog with the specified details.
///
/// This function shows a dialog containing information about the application,
/// including its name, version, legalese, and a custom description. The dialog
/// also features a Flutter logo as the application icon.
///
/// Parameters:
/// - `context`: The build context in which to display the dialog.
/// - `title`: The title of the application to be displayed in the dialog.
/// - `version`: The version of the application to be displayed in the dialog.
/// - `legalese`: Legal information to be displayed in the dialog.
/// - `description`: A custom description to be displayed in the dialog.
void showCustomAboutDialog({
  required BuildContext context,
  required String title,
  required String version,
  required String legalese,
  required String description,
}) {
  showAboutDialog(
    context: context,
    applicationName: title,
    applicationIcon: const FlutterLogo(size: 50.0),
    applicationVersion: version,
    applicationLegalese: legalese,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 35.0),
        child: Text(description),
      ),
    ],
  );
}

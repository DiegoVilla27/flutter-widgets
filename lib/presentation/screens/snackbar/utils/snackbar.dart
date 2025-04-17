import 'package:flutter/material.dart';

enum SnackbarType { info, success, error, warning }

/// A utility class for displaying custom snack bars with predefined styles.
///
/// This class provides methods to display snack bars with different types
/// such as info, success, warning, and error. Each type has a specific
/// color and icon associated with it.
///
/// Methods:
/// - `open`: Displays a snack bar with the specified title and type.
class SnackBarCustom {
  static const _colors = {
    SnackbarType.info: Colors.blue,
    SnackbarType.success: Colors.green,
    SnackbarType.warning: Colors.orange,
    SnackbarType.error: Colors.red,
  };

  static const _icons = {
    SnackbarType.info: Icons.info_rounded,
    SnackbarType.success: Icons.check_circle,
    SnackbarType.warning: Icons.warning_rounded,
    SnackbarType.error: Icons.error_rounded,
  };

  static SnackBar _buildSnackBar(String title, SnackbarType type) {
    return SnackBar(
      content: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Icon(_icons[type], color: _colors[type]),
        ],
      ),
      behavior: SnackBarBehavior.floating,
    );
  }

  static open(BuildContext context, String title, SnackbarType type) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(_buildSnackBar(title, type));
  }
}

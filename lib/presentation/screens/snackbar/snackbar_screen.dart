import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';
import 'package:flutter_widgets/presentation/screens/snackbar/utils/snackbar.dart';

/// A stateless widget that displays a screen with a custom app bar and a button
/// to open a snackbar.
///
/// The `SnackbarScreen` widget uses the `Layout` widget to structure its
/// content, featuring a custom app bar with the title "Snackbar". The main
/// content is centered and contains an `ElevatedButton` that, when pressed,
/// triggers a custom snackbar with a success message.
class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Snackbar"),
      child: Center(
        widthFactor: double.infinity,
        heightFactor: double.infinity,
        child: ElevatedButton(
          onPressed:
              () => SnackBarCustom.open(
                context,
                "I'm a Snackbar!",
                SnackbarType.success,
              ),
          child: const Text("Open Snackbar"),
        ),
      ),
    );
  }
}

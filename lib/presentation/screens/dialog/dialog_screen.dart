import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/dialog/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays a screen with various buttons to open
/// different types of custom dialogs. The dialogs include a standard dialog,
/// an alert dialog, a simple dialog with selectable options, and an about
/// dialog. Each button triggers a specific dialog when pressed, utilizing
/// the provided context and dialog-specific parameters.
class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Dialog"),
      child: Center(
        widthFactor: double.infinity,
        heightFactor: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Open Dialog"),
              onPressed:
                  () => showCustomDialog(
                    context: context,
                    title: "¡Welcome!",
                    description:
                        "Voluptate duis occaecat quis sunt duis. Fugiat pariatur esse magna eiusmod nostrud sint duis aute eiusmod aute nostrud sit laborum. Occaecat adipisicing pariatur tempor eiusmod.",
                  ),
            ),
            ElevatedButton(
              child: const Text("Open Alert Dialog"),
              onPressed:
                  () => showCustomAlertDialog(
                    context: context,
                    title: "¿Are you sure you want to delete this item?",
                    content: const Text(
                      "Voluptate duis occaecat quis sunt duis. Fugiat pariatur esse magna eiusmod nostrud sint duis aute eiusmod aute nostrud sit laborum. Occaecat adipisicing pariatur tempor eiusmod.",
                    ),
                    confirm: () {
                      context.pop();
                    },
                    cancel: () {
                      context.pop();
                    },
                  ),
            ),
            ElevatedButton(
              child: const Text("Open Simple Dialog"),
              onPressed:
                  () => showCustomSimpleDialog(
                    context: context,
                    title: "Select option",
                    description:
                        "Voluptate duis occaecat quis sunt duis. Fugiat pariatur esse",
                    list: [
                      {'id': 1, 'name': 'Diego', 'age': 33},
                      {'id': 2, 'name': 'Carlos', 'age': 34},
                      {'id': 3, 'name': 'Laura', 'age': 33},
                      {'id': 4, 'name': 'Camila', 'age': 26},
                    ],
                    bindingLabel: "name",
                    itemSelected: (item) {},
                  ),
            ),
            ElevatedButton(
              child: const Text("Open About Dialog"),
              onPressed:
                  () => showCustomAboutDialog(
                    context: context,
                    title: "Widgets App",
                    version: "v1.0",
                    legalese: "© 2025 Mi Compañía",
                    description:
                        "Incididunt dolor nulla excepteur adipisicing officia...",
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

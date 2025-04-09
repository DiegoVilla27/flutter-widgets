import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Displays a custom simple dialog with a title, description, and a list of options.
/// 
/// The dialog presents a list of items, each represented by a map, and allows the
/// user to select one. The selected item is passed to the `itemSelected` callback.
/// 
/// The dialog is styled with a bold title and a description, and each option is
/// displayed using the value associated with the `bindingLabel` key in the map.
/// 
/// The dialog is dismissed automatically when an option is selected.
/// 
/// Parameters:
/// - `context`: The build context in which the dialog is displayed.
/// - `title`: The title of the dialog.
/// - `description`: A brief description displayed below the title.
/// - `list`: A list of maps representing the options available in the dialog.
/// - `bindingLabel`: The key used to extract the display text for each option.
/// - `itemSelected`: A callback function invoked with the selected item.
void showCustomSimpleDialog({
  required BuildContext context,
  required String title,
  required String description,
  required List<Map<String, dynamic>> list,
  required String bindingLabel,
  required Function(dynamic) itemSelected,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text("$description:", style: const TextStyle(fontSize: 15.0)),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        children:
            list.map((item) {
              return SimpleDialogOption(
                onPressed: () {
                  itemSelected(item);
                  context.pop();
                },
                child: Text(item[bindingLabel]),
              );
            }).toList(),
      );
    },
  );
}

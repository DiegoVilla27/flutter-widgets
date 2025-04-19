import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays a screen with a custom app bar and a button
/// to open a modal bottom sheet. The bottom sheet contains a list of options
/// such as 'Share', 'Copy link', and 'Edit', each represented by a ListTile
/// with an icon and text. Tapping an option will close the bottom sheet.
class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Bottom Sheet"),
      child: Center(
        child: ElevatedButton(
          child: const Text("Open BottomSheet"),
          onPressed: () => _openBottomSheet(context),
        ),
      ),
    );
  }

  /// Opens a modal bottom sheet with a rounded top border containing a list of
  /// options: 'Share', 'Copy link', and 'Edit'. Each option is represented by a
  /// ListTile with an icon and text. Selecting an option will close the bottom
  /// sheet.
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 5.0,
            right: 5.0,
            bottom: 20.0,
          ),
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.share, color: Colors.black),
                title: const Text(
                  'Share',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () => context.pop(),
              ),
              ListTile(
                leading: const Icon(Icons.link, color: Colors.black),
                title: const Text(
                  'Copy link',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () => context.pop(),
              ),
              ListTile(
                leading: const Icon(Icons.edit, color: Colors.black),
                title: const Text(
                  'Edit',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () => context.pop(),
              ),
            ],
          ),
        );
      },
    );
  }
}

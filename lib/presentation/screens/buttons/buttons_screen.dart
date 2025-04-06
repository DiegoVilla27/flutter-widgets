import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/buttons/widgets/buttons.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen displaying various types of buttons.
/// 
/// This screen includes a custom app bar and a floating action button. It uses a
/// scrollable column layout to showcase different button styles, each separated by
/// a divider. The buttons include elevated, outlined, text, icon, filled, and custom
/// button containers.
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBarCustom(title: 'Buttons'),
      floatingActionButton: FABBtnContainer(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedBtnContainer(),
            Divider(),
            OutlinedBtnContainer(),
            Divider(),
            TextBtnContainer(),
            Divider(),
            IconBtnContainer(),
            Divider(),
            FilledBtnContainer(),
            Divider(),
            CustomBtnContainer(),
          ],
        ),
      ),
    );
  }
}
